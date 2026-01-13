# frozen_string_literal: true

# Auto-linker Plugin for Jekyll
# =============================
# This plugin provides automatic linking of videos, articles, and people names
# in content, replacing the slow Liquid template implementation.
#
# Priority order: Hidden People (4) > Videos (3) > Articles (2) > People (1)
#
# Features:
# - Converts markdown links [text](url) to HTML
# - Removes links to non-existent people
# - Protects content in no-auto-link-marker spans
# - Protects HTML attributes from auto-linking
# - Handles hidden content with [REDACTED] spans
# - Protects blog-embed-card divs from auto-linking
# - Generates back-links for pages that reference each other

module EarlyDays
  # Manages auto-linking tokens and lookups
  class AutoLinker
    # Token types for priority ordering
    PRIORITY_HIDDEN = 4
    PRIORITY_VIDEO = 3
    PRIORITY_ARTICLE = 2
    PRIORITY_PERSON = 1

    class << self
      # Build lookup tables from site collections
      def build_lookup(site)
        @lookup = {}
        @hidden_people = {}
        @hidden_articles = {}
        @people_slugs = {}
        @backlinks = Hash.new { |h, k| h[k] = { content: [], people: [] } }

        # Index people slugs for validation
        site.collections['people']&.docs&.each do |person|
          slug = person.url.split('/people/').last&.chomp('/')
          @people_slugs[slug] = true
        end

        # Index hidden people first
        site.collections['people']&.docs&.each do |person|
          next unless person.data['hidden']
          name = person.data['name']
          next unless name
          @hidden_people[name] = {
            url: person.url,
            priority: PRIORITY_HIDDEN
          }
        end

        # Index hidden articles
        site.collections['articles']&.docs&.each do |article|
          next unless article.data['hidden']
          @hidden_articles[article.url] = true
        end

        # Index videos
        site.collections['videos']&.docs&.each do |video|
          title = video.data['title']
          next unless title && !title.empty?
          @lookup[title] = {
            url: video.url,
            title: title,
            priority: PRIORITY_VIDEO
          }
        end

        # Index articles (title and alias)
        site.collections['articles']&.docs&.each do |article|
          next if article.data['hidden']
          title = article.data['title']
          if title && !title.empty?
            @lookup[title] = {
              url: article.url,
              title: title,
              priority: PRIORITY_ARTICLE
            }
          end
          article_alias = article.data['alias']
          if article_alias && !article_alias.empty?
            @lookup[article_alias] = {
              url: article.url,
              title: article_alias,
              priority: PRIORITY_ARTICLE
            }
          end
        end

        # Index people (name and nickname)
        site.collections['people']&.docs&.each do |person|
          next if person.data['hidden']
          name = person.data['name']
          if name && !name.empty?
            @lookup[name] = {
              url: person.url,
              title: name,
              priority: PRIORITY_PERSON
            }
          end
          nickname = person.data['nickname']
          if nickname && !nickname.empty?
            @lookup[nickname] = {
              url: person.url,
              title: nickname,
              priority: PRIORITY_PERSON
            }
          end
        end

        # Sort lookup by priority (highest first), then by length (longest first)
        @sorted_tokens = @lookup.keys.sort_by do |key|
          [-@lookup[key][:priority], -key.length]
        end

        # Sort hidden people by length (longest first)
        @sorted_hidden = @hidden_people.keys.sort_by { |name| -name.length }
      end

      # Check if a person slug exists
      def person_exists?(slug)
        @people_slugs[slug]
      end

      # Check if an article is hidden
      def article_hidden?(url)
        @hidden_articles[url]
      end

      # Get hidden people lookup
      def hidden_people
        @hidden_people
      end

      # Get sorted hidden people names
      def sorted_hidden
        @sorted_hidden
      end

      # Get the lookup table
      def lookup
        @lookup
      end

      # Get sorted tokens by priority and length
      def sorted_tokens
        @sorted_tokens
      end

      # Store backlinks data
      def backlinks
        @backlinks
      end

      # Process HTML content with auto-linking
      def link_html(html, doc_url, site)
        return html if html.nil? || html.empty?

        content = html.dup

        # Step 1: Convert markdown links [text](url) to HTML
        content = convert_markdown_links(content)

        # Step 2: Remove links to non-existent people
        content = remove_invalid_people_links(content)

        # Step 3: Protect no-auto-link-marker spans
        protected_spans = []
        content = protect_spans(content, protected_spans)

        # Step 4: Protect blog-embed-card divs EARLY - before any name replacements
        # This prevents hidden name replacement from corrupting embed HTML structure
        protected_embeds = []
        content = protect_embeds(content, protected_embeds)

        # Step 5: Protect HTML attributes BEFORE hidden processing
        # This prevents hidden name replacement inside data-original-name attributes
        protected_attrs = []
        content = protect_attributes(content, protected_attrs)

        # Step 6: Process hidden content (links to hidden people/articles)
        content = process_hidden_links(content)

        # Step 7: Process videos (priority 3)
        content = process_tokens_by_priority(content, doc_url, PRIORITY_VIDEO)

        # Step 8: Process articles (priority 2)
        content = process_tokens_by_priority(content, doc_url, PRIORITY_ARTICLE)

        # Step 9: Process people with link protection (priority 1)
        content = process_people_with_protection(content, doc_url, site)

        # Step 10: Restore protected content in reverse order
        content = restore_embeds(content, protected_embeds)
        content = restore_spans(content, protected_spans)
        content = restore_attributes(content, protected_attrs)

        content
      end

      private

      # Convert markdown [text](url) to <a href="url">text</a>
      def convert_markdown_links(content)
        # Iteratively convert markdown links (max 20 iterations for safety)
        # Use a stricter regex that matches proper markdown links like [text](url)
        # URL must start with a valid character (letter, /, #, .) and cannot contain
        # spaces, newlines, angle brackets, or quotes
        20.times do
          # Match [text](url) pattern where URL starts with valid char and has no spaces/quotes
          match = content.match(/\[([^\]]+)\]\(([a-zA-Z\/#\.][^\s)<>'"]*)\)/)
          break unless match

          text = match[1]
          url = match[2]

          link = %(<a href="#{url}">#{text}</a>)
          content = content.sub(match[0], link)
        end
        content
      end

      # Remove links to non-existent people
      def remove_invalid_people_links(content)
        # Find all <a href="/people/...">...</a> links
        content.gsub(%r{<a href="(/people/[^"]+)"[^>]*>([^<]*)</a>}) do |match|
          href = Regexp.last_match(1)
          link_text = Regexp.last_match(2)

          # Skip external URLs
          next match if href.include?('http://') || href.include?('https://')

          # Extract person slug
          slug = href.split('/people/').last&.chomp('/')

          # Check if person exists
          if person_exists?(slug)
            match
          else
            link_text # Return just the text without the link
          end
        end
      end

      # Protect no-auto-link-marker spans
      def protect_spans(content, protected_spans)
        counter = 0
        content.gsub(%r{<span class="no-auto-link-marker">([^<]*(?:<(?!/span>)[^<]*)*)</span>}) do |match|
          placeholder = "___PROTECTED_SPAN_#{counter}___"
          protected_spans << [placeholder, match]
          counter += 1
          placeholder
        end
      end

      # Restore protected spans
      def restore_spans(content, protected_spans)
        protected_spans.reverse_each do |placeholder, original|
          content = content.gsub(placeholder, original)
        end
        content
      end

      # Process hidden links (replace with [REDACTED])
      def process_hidden_links(content)
        # Handle hidden articles - replace links with [REDACTED]
        @hidden_articles.each_key do |article_url|
          # Match <a href="article_url">...</a> and replace with [REDACTED]
          pattern = %r{<a href="#{Regexp.escape(article_url)}/?"[^>]*>[^<]*</a>}
          content = content.gsub(pattern, '[REDACTED]')
        end

        # Handle hidden people - replace links with [REDACTED] span
        @hidden_people.each do |name, data|
          url = data[:url]

          # Replace links to hidden people with [REDACTED] span
          pattern = %r{<a href="#{Regexp.escape(url)}/?"[^>]*>([^<]*)</a>}
          content = content.gsub(pattern) do |_match|
            link_text = Regexp.last_match(1)
            %(<span class="hidden-autolink" data-original-name="#{link_text}" data-original-url="#{url}">[REDACTED]</span>)
          end
        end

        # Replace plain text occurrences of hidden people names
        @sorted_hidden.each do |name|
          data = @hidden_people[name]
          url = data[:url]
          normalized_name = name.gsub(/["']/, '')
          redaction = %(<span class="hidden-autolink" data-original-name="#{normalized_name}" data-original-url="#{url}">[REDACTED]</span>)
          content = content.gsub(normalized_name, redaction)
        end

        content
      end

      # Protect HTML attributes from auto-linking
      def protect_attributes(content, protected_attrs)
        counter = 0
        attr_names = %w[alt title aria-label aria-describedby data- src href]

        attr_names.each do |attr_name|
          # Protect double-quoted attributes
          pattern = /#{Regexp.escape(attr_name)}="([^"]*)"/
          content = content.gsub(pattern) do |match|
            placeholder = "___PROTECTED_ATTR_#{counter}___"
            protected_attrs << [placeholder, match]
            counter += 1
            placeholder
          end

          # Protect single-quoted attributes
          pattern = /#{Regexp.escape(attr_name)}='([^']*)'/
          content = content.gsub(pattern) do |match|
            placeholder = "___PROTECTED_ATTR_#{counter}___"
            protected_attrs << [placeholder, match]
            counter += 1
            placeholder
          end
        end

        content
      end

      # Restore protected attributes
      def restore_attributes(content, protected_attrs)
        protected_attrs.reverse_each do |placeholder, original|
          content = content.gsub(placeholder, original)
        end
        content
      end

      # Protect blog-embed-card divs
      def protect_embeds(content, protected_embeds)
        counter = 0
        # Match <div class="blog-embed-card...">...</div> with nested divs
        # Using a simple approach: find opening tag and count div nesting
        result = content.dup

        while result.include?('<div class="blog-embed-card')
          start_idx = result.index('<div class="blog-embed-card')
          break unless start_idx

          # Count nested divs to find the closing tag
          depth = 0
          idx = start_idx
          end_idx = nil

          while idx < result.length
            if result[idx, 4] == '<div'
              depth += 1
              idx += 4
            elsif result[idx, 6] == '</div>'
              depth -= 1
              if depth == 0
                end_idx = idx + 6
                break
              end
              idx += 6
            else
              idx += 1
            end
          end

          break unless end_idx

          embed_content = result[start_idx...end_idx]
          placeholder = "___CONTENT_EMBED_#{counter}___"
          protected_embeds << [placeholder, embed_content]
          result = result[0...start_idx] + placeholder + result[end_idx..]
          counter += 1
        end

        result
      end

      # Restore protected embeds
      def restore_embeds(content, protected_embeds)
        protected_embeds.reverse_each do |placeholder, original|
          content = content.gsub(placeholder, original)
        end
        content
      end

      # Process tokens by specific priority, protecting existing links
      def process_tokens_by_priority(content, doc_url, priority)
        @sorted_tokens.each do |token|
          data = @lookup[token]
          next unless data[:priority] == priority
          next if data[:url] == doc_url # Skip self-references

          # Protect existing links containing this token to avoid nesting
          protected_links = []
          temp_content = content.dup
          link_counter = 0

          temp_content = temp_content.gsub(%r{<a\s[^>]*>([^<]*(?:<(?!/a>)[^<]*)*)</a>}i) do |match|
            if match.include?(token)
              placeholder = "___PROTECTED_LINK_#{link_counter}___"
              protected_links << [placeholder, match]
              link_counter += 1
              placeholder
            else
              match
            end
          end

          # Now replace the token
          link = %(<a href="#{data[:url]}">#{data[:title]}</a>)
          temp_content = temp_content.gsub(token, link)

          # Restore protected links
          protected_links.reverse_each do |placeholder, original|
            temp_content = temp_content.gsub(placeholder, original)
          end

          content = temp_content
        end
        content
      end

      # Process people with protection for names inside existing links
      def process_people_with_protection(content, doc_url, site)
        @sorted_tokens.each do |token|
          data = @lookup[token]
          next unless data[:priority] == PRIORITY_PERSON
          next if data[:url] == doc_url # Skip self-references

          # Temporarily protect ALL existing links containing this person's name
          # This prevents creating nested <a> tags
          protected_links = []
          temp_content = content.dup
          link_counter = 0

          # Find all <a>...</a> tags that contain this token and protect them
          temp_content = temp_content.gsub(%r{<a\s[^>]*>([^<]*(?:<(?!/a>)[^<]*)*)</a>}i) do |match|
            if match.include?(token)
              placeholder = "___PROTECTED_LINK_#{link_counter}___"
              protected_links << [placeholder, match]
              link_counter += 1
              placeholder
            else
              match
            end
          end

          # Now replace the person name (only in unprotected content)
          link = %(<a href="#{data[:url]}">#{data[:title]}</a>)
          temp_content = temp_content.gsub(token, link)

          # Also handle quoted versions of the name
          normalized = token.gsub('"', '')
          quoted_double = %("#{normalized}")
          quoted_single = %('#{normalized}')
          temp_content = temp_content.gsub(quoted_double, link) if quoted_double != token
          temp_content = temp_content.gsub(quoted_single, link) if quoted_single != token

          # Restore protected links
          protected_links.reverse_each do |placeholder, original|
            temp_content = temp_content.gsub(placeholder, original)
          end

          content = temp_content
        end
        content
      end
    end

    # Build backlinks for all pages
    def self.build_backlinks(site)
      @backlinks = Hash.new { |h, k| h[k] = { content: [], people: [] } }

      all_docs = []
      %w[articles videos people].each do |collection|
        site.collections[collection]&.docs&.each do |doc|
          all_docs << doc
        end
      end

      all_docs.each do |doc|
        doc_url = doc.url
        doc_title = doc.data['title'] || doc.data['name']
        doc_name = doc.data['name']
        doc_alias = doc.data['alias']
        doc_collection = doc.collection.label

        next if doc.data['hidden']

        # Build searchable content for this doc
        search_text = [
          doc.content,
          doc.data['title'],
          doc.data['description'],
          doc.data['author'],
          (doc.data['hosts'] || []).join(' '),
          (doc.data['guests'] || []).join(' ')
        ].compact.join(' ').gsub(/["']/, '')

        # Check all other docs for references to this one
        all_docs.each do |other_doc|
          next if other_doc.url == doc_url
          next if other_doc.data['hidden']

          other_content = [
            other_doc.content,
            other_doc.data['title'],
            other_doc.data['description'],
            other_doc.data['author'],
            (other_doc.data['hosts'] || []).join(' '),
            (other_doc.data['guests'] || []).join(' ')
          ].compact.join(' ').gsub(/["']/, '')

          # Check if other_doc references this doc
          found = false

          # Check URL (with and without trailing slash)
          url_without_slash = doc_url.chomp('/')
          url_with_slash = doc_url.end_with?('/') ? doc_url : "#{doc_url}/"
          found = true if other_content.include?(url_without_slash) || other_content.include?(url_with_slash)

          # Check title
          if !found && doc_title && !doc_title.empty?
            normalized_title = doc_title.gsub(/["']/, '')
            found = true if other_content.include?(normalized_title)
          end

          # Check name
          if !found && doc_name && !doc_name.empty?
            normalized_name = doc_name.gsub(/["']/, '')
            found = true if other_content.include?(normalized_name)
          end

          # Check alias
          if !found && doc_alias && !doc_alias.empty?
            normalized_alias = doc_alias.gsub(/["']/, '')
            found = true if other_content.include?(normalized_alias)
          end

          if found
            other_collection = other_doc.collection.label
            if other_collection == 'people'
              @backlinks[doc_url][:people] << other_doc unless @backlinks[doc_url][:people].any? { |d| d.url == other_doc.url }
            else
              @backlinks[doc_url][:content] << other_doc unless @backlinks[doc_url][:content].any? { |d| d.url == other_doc.url }
            end
          end
        end

        # Phase 2: Reciprocal backlinks - find what this doc would auto-link to
        # Check if this doc contains names/titles of other docs
        all_docs.each do |other_doc|
          next if other_doc.url == doc_url
          next if other_doc.data['hidden']

          other_title = other_doc.data['title']
          other_name = other_doc.data['name']
          other_alias = other_doc.data['alias']
          other_collection = other_doc.collection.label

          would_link = false

          if other_title && !other_title.empty?
            normalized = other_title.gsub(/["']/, '')
            would_link = true if search_text.include?(normalized)
          end

          if !would_link && other_name && !other_name.empty?
            normalized = other_name.gsub(/["']/, '')
            would_link = true if search_text.include?(normalized)
          end

          if !would_link && other_alias && !other_alias.empty?
            normalized = other_alias.gsub(/["']/, '')
            would_link = true if search_text.include?(normalized)
          end

          if would_link
            if other_collection == 'people'
              @backlinks[doc_url][:people] << other_doc unless @backlinks[doc_url][:people].any? { |d| d.url == other_doc.url }
            else
              @backlinks[doc_url][:content] << other_doc unless @backlinks[doc_url][:content].any? { |d| d.url == other_doc.url }
            end
          end
        end
      end
    end

    # Render backlinks HTML for a page
    def self.render_backlinks(page_url)
      data = @backlinks[page_url]
      return '' unless data

      content_links = data[:content] || []
      people_links = data[:people] || []

      return '' if content_links.empty? && people_links.empty?

      # Sort content by date, people alphabetically
      sorted_content = content_links.sort_by { |doc| doc.data['date'] || Time.at(0) }
      sorted_people = people_links.sort_by { |doc| doc.data['name'] || '' }

      html = ['<div class="back-links-section">']
      html << '  <h2>Back-links</h2>'
      html << '  <p class="back-links-description">Other pages that reference this:</p>'
      html << '  <ul class="back-links-list">'

      # Content (articles/videos) first
      sorted_content.each do |doc|
        title = doc.data['title'] || doc.data['name']
        collection = doc.collection.label
        date_str = doc.data['date'] ? doc.data['date'].strftime('%B %d, %Y') : nil
        type_str = collection.capitalize
        type_str += ", #{date_str}" if date_str

        html << '    <li>'
        html << "      <a href=\"#{doc.url}\">#{title}</a>"
        html << "      <span class=\"back-link-type\">(#{type_str})</span>"
        html << '    </li>'
      end

      # People second
      sorted_people.each do |doc|
        name = doc.data['title'] || doc.data['name']
        collection = doc.collection.label

        html << '    <li>'
        html << "      <a href=\"#{doc.url}\">#{name}</a>"
        html << "      <span class=\"back-link-type\">(#{collection.capitalize})</span>"
        html << '    </li>'
      end

      html << '  </ul>'
      html << '</div>'

      html.join("\n")
    end
  end
end

# Register the Liquid filter
module Jekyll
  module AutoLinkFilter
    def auto_link(input)
      return input if input.nil? || input.empty?

      site = @context.registers[:site]
      page = @context.registers[:page]
      doc_url = page['url'] || ''

      EarlyDays::AutoLinker.link_html(input, doc_url, site)
    end
  end
end

Liquid::Template.register_filter(Jekyll::AutoLinkFilter)

# Jekyll hooks
Jekyll::Hooks.register :site, :post_read do |site|
  Jekyll.logger.info 'AutoLinker:', 'Building lookup tables...'
  EarlyDays::AutoLinker.build_lookup(site)
  Jekyll.logger.info 'AutoLinker:', 'Lookup tables built.'
end

Jekyll::Hooks.register :site, :post_render do |site|
  Jekyll.logger.info 'AutoLinker:', 'Building backlinks...'
  EarlyDays::AutoLinker.build_backlinks(site)

  # Inject backlinks into rendered pages
  site.pages.each do |page|
    next unless page.output

    backlinks_html = EarlyDays::AutoLinker.render_backlinks(page.url)
    next if backlinks_html.empty?

    # Replace the back-links.html include placeholder if present
    if page.output.include?('{% include back-links.html %}')
      page.output = page.output.gsub('{% include back-links.html %}', backlinks_html)
    end
  end

  # Process documents in collections
  site.collections.each_value do |collection|
    collection.docs.each do |doc|
      next unless doc.output

      backlinks_html = EarlyDays::AutoLinker.render_backlinks(doc.url)
      next if backlinks_html.empty?

      # Replace the back-links.html include placeholder if present
      if doc.output.include?('{% include back-links.html %}')
        doc.output = doc.output.gsub('{% include back-links.html %}', backlinks_html)
      end
    end
  end

  Jekyll.logger.info 'AutoLinker:', 'Backlinks injected.'
end

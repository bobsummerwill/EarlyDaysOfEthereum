# frozen_string_literal: true

# Auto-linker Plugin for Jekyll (Optimized Version v5)
# =====================================================
# Key insight: Regexp.union is slow with many patterns.
# Solution: Batch tokens into smaller groups of ~50 patterns each.

module EarlyDays
  class AutoLinker
    PRIORITY_HIDDEN = 4
    PRIORITY_VIDEO = 3
    PRIORITY_ARTICLE = 2
    PRIORITY_PERSON = 1
    BATCH_SIZE = 50

    class << self
      def build_lookup(site)
        @lookup = {}
        @hidden_people = {}
        @hidden_articles = {}
        @people_slugs = {}
        @backlinks = Hash.new { |h, k| h[k] = { content: [], people: [] } }

        site.collections['people']&.docs&.each do |person|
          slug = person.url.split('/people/').last&.chomp('/')
          @people_slugs[slug] = true
        end

        site.collections['people']&.docs&.each do |person|
          next unless person.data['hidden']
          name = person.data['name']
          @hidden_people[name] = { url: person.url } if name
        end

        site.collections['articles']&.docs&.each do |article|
          @hidden_articles[article.url] = true if article.data['hidden']
        end

        site.collections['videos']&.docs&.each do |video|
          title = video.data['title']
          @lookup[title] = { url: video.url, title: title, priority: PRIORITY_VIDEO } if title&.length.to_i > 0
        end

        site.collections['articles']&.docs&.each do |article|
          next if article.data['hidden']
          title = article.data['title']
          @lookup[title] = { url: article.url, title: title, priority: PRIORITY_ARTICLE } if title&.length.to_i > 0
          al = article.data['alias']
          @lookup[al] = { url: article.url, title: al, priority: PRIORITY_ARTICLE } if al&.length.to_i > 0
        end

        site.collections['people']&.docs&.each do |person|
          next if person.data['hidden']
          name = person.data['name']
          @lookup[name] = { url: person.url, title: name, priority: PRIORITY_PERSON } if name&.length.to_i > 0
          nick = person.data['nickname']
          @lookup[nick] = { url: person.url, title: nick, priority: PRIORITY_PERSON } if nick&.length.to_i > 0
        end

        @sorted_hidden = @hidden_people.keys.sort_by { |n| -n.length }

        @priority_tokens = { PRIORITY_VIDEO => [], PRIORITY_ARTICLE => [], PRIORITY_PERSON => [] }
        @lookup.each { |t, d| @priority_tokens[d[:priority]] << t }
        @priority_tokens.each_value { |arr| arr.sort_by! { |t| -t.length } }

        # Pre-compile batched patterns for video+article
        va_tokens = (@priority_tokens[PRIORITY_VIDEO] + @priority_tokens[PRIORITY_ARTICLE]).sort_by { |t| -t.length }
        @va_patterns = va_tokens.each_slice(BATCH_SIZE).map { |batch| Regexp.union(batch) }

        # Pre-compile batched patterns for people
        p_tokens = @priority_tokens[PRIORITY_PERSON].sort_by { |t| -t.length }
        @person_patterns = p_tokens.each_slice(BATCH_SIZE).map { |batch| Regexp.union(batch) }

        # Word boundary makes this 7x faster, no i flag needed (no uppercase tags)
        @link_pattern = /<a\b[^>]*>.*?<\/a>/
      end

      def person_exists?(slug) = @people_slugs[slug]
      def hidden_people = @hidden_people
      def sorted_hidden = @sorted_hidden
      def lookup = @lookup
      def backlinks = @backlinks

      def link_html(html, doc_url, site)
        return html if html.nil? || html.empty?

        content = html.dup

        # Step 1: Convert markdown links (simplified pattern)
        content.gsub!(/\[([^\]]+)\]\(([^\s)]+)\)/) { %(<a href="#{$2}">#{$1}</a>) }

        # Step 2: Remove invalid people links
        content.gsub!(%r{<a href="(/people/[^"]+)"[^>]*>([^<]*)</a>}) do |m|
          ($1.include?('http') || person_exists?($1.split('/people/').last&.chomp('/'))) ? m : $2
        end

        # Step 3: Protect special content
        protected = []
        counter = 0

        content.gsub!(%r{<span class="no-auto-link-marker">[^<]*(?:<(?!/span>)[^<]*)*</span>}) do |m|
          p = "___PS#{counter}___"; protected << [p, m]; counter += 1; p
        end

        # Much faster: use scan with regex to find div positions, then parse depth
        offset = 0
        while (match = content.match(/<div class="blog-embed-card/, offset))
          idx = match.begin(0)
          depth, i = 0, idx
          # Scan forward counting divs using index() for speed
          loop do
            open_pos = content.index('<div', i)
            close_pos = content.index('</div>', i)
            break unless close_pos

            if open_pos && open_pos < close_pos
              depth += 1
              i = open_pos + 4
            else
              depth -= 1
              i = close_pos + 6
              break if depth == 0
            end
          end

          p = "___PE#{counter}___"
          protected << [p, content[idx...i]]
          content = content[0...idx] + p + content[i..]
          offset = idx + p.length
          counter += 1
        end

        content.gsub!(/<(?:img|meta|span class="hidden-autolink")[^>]*>/) do |m|
          p = "___PT#{counter}___"; protected << [p, m]; counter += 1; p
        end

        # Step 4: Process hidden
        @hidden_articles.each_key { |u| content.gsub!(%r{<a href="#{Regexp.escape(u)}/?"[^>]*>[^<]*</a>}, '[REDACTED]') }

        @hidden_people.each do |name, data|
          url = data[:url]
          content.gsub!(%r{<a href="#{Regexp.escape(url)}/?"[^>]*>([^<]*)</a>}) do
            %(<span class="hidden-autolink" data-original-name="#{$1}" data-original-url="#{url}">[REDACTED]</span>)
          end
        end

        @sorted_hidden.each do |name|
          normalized = name.tr('"\'', '')
          content.gsub!(normalized, %(<span class="hidden-autolink" data-original-name="#{normalized}" data-original-url="#{@hidden_people[name][:url]}">[REDACTED]</span>))
        end

        # Step 5: Protect existing links
        link_placeholders = []
        lc = 0
        content.gsub!(@link_pattern) do |m|
          p = "___PL#{lc}___"; link_placeholders << [p, m]; lc += 1; p
        end

        # Step 5.5: Protect all remaining HTML tags so we don't replace inside attributes
        content.gsub!(/<[^>]+>/) do |m|
          p = "___PT#{counter}___"; protected << [p, m]; counter += 1; p
        end

        # Step 6: Replace video+article tokens using batched patterns
        @va_patterns.each do |pattern|
          content.gsub!(pattern) do |m|
            d = @lookup[m]
            (d && d[:url] != doc_url) ? %(<a href="#{d[:url]}">#{d[:title]}</a>) : m
          end
        end

        # Step 7: Restore links (single pass with hash lookup)
        if link_placeholders.any?
          pl_hash = link_placeholders.to_h
          content.gsub!(/___PL\d+___/) { |m| pl_hash[m] }
        end

        # Step 8: Protect all links again
        link_placeholders2 = []
        lc2 = 0
        content.gsub!(@link_pattern) do |m|
          p = "___PX#{lc2}___"; link_placeholders2 << [p, m]; lc2 += 1; p
        end

        # Step 9: Replace person tokens using batched patterns
        @person_patterns.each do |pattern|
          content.gsub!(pattern) do |m|
            d = @lookup[m]
            (d && d[:url] != doc_url) ? %(<a href="#{d[:url]}">#{d[:title]}</a>) : m
          end
        end

# Step 10: Restore all (loop until no more placeholders - handles nested protection)
        restore_hash = (link_placeholders2 + protected + link_placeholders).to_h
        placeholder_pattern = /___P[LXSET]\d+___/
        while content.match?(placeholder_pattern)
          content.gsub!(placeholder_pattern) { |m| restore_hash[m] || m }
        end

        content
      end
    end

    def self.build_backlinks(site)
      @backlinks = Hash.new { |h, k| h[k] = { content: [], people: [] } }

      all_docs = %w[articles videos people].flat_map { |c| site.collections[c]&.docs || [] }

      texts, ids = {}, {}
      all_docs.each do |doc|
        next if doc.data['hidden']
        url = doc.url
        texts[url] = [doc.content, doc.data['title'], doc.data['description'], doc.data['author'],
                      (doc.data['hosts'] || []).join(' '), (doc.data['guests'] || []).join(' ')].compact.join(' ').tr('"\'', '')
        ids[url] = { url_ns: url.chomp('/'), title: doc.data['title']&.tr('"\'', ''),
                     name: doc.data['name']&.tr('"\'', ''), aka: doc.data['alias']&.tr('"\'', ''),
                     col: doc.collection.label }
      end

      all_docs.each do |doc|
        next if doc.data['hidden']
        my = ids[doc.url]
        next unless my

        all_docs.each do |other|
          next if other.url == doc.url || other.data['hidden']
          ot = texts[other.url]
          next unless ot
          if ot.include?(my[:url_ns]) || (my[:title]&.length.to_i > 0 && ot.include?(my[:title])) ||
             (my[:name]&.length.to_i > 0 && ot.include?(my[:name])) || (my[:aka]&.length.to_i > 0 && ot.include?(my[:aka]))
            tgt = other.collection.label == 'people' ? :people : :content
            @backlinks[doc.url][tgt] << other unless @backlinks[doc.url][tgt].any? { |d| d.url == other.url }
          end
        end

        mt = texts[doc.url]
        next unless mt
        all_docs.each do |other|
          next if other.url == doc.url || other.data['hidden']
          oi = ids[other.url]
          next unless oi
          if (oi[:title]&.length.to_i > 0 && mt.include?(oi[:title])) ||
             (oi[:name]&.length.to_i > 0 && mt.include?(oi[:name])) || (oi[:aka]&.length.to_i > 0 && mt.include?(oi[:aka]))
            tgt = oi[:col] == 'people' ? :people : :content
            @backlinks[doc.url][tgt] << other unless @backlinks[doc.url][tgt].any? { |d| d.url == other.url }
          end
        end
      end
    end

    def self.render_backlinks(url)
      d = @backlinks[url]
      return '' unless d
      cl, pl = d[:content] || [], d[:people] || []
      return '' if cl.empty? && pl.empty?

      h = ['<div class="back-links-section">', '  <h2>Back-links</h2>',
           '  <p class="back-links-description">Other pages that reference this:</p>', '  <ul class="back-links-list">']
      cl.sort_by { |x| x.data['date'] || Time.at(0) }.each do |x|
        t = x.data['title'] || x.data['name']
        ds = x.data['date']&.strftime('%B %d, %Y')
        ts = x.collection.label.capitalize + (ds ? ", #{ds}" : '')
        h << "    <li><a href=\"#{x.url}\">#{t}</a> <span class=\"back-link-type\">(#{ts})</span></li>"
      end
      pl.sort_by { |x| x.data['name'] || '' }.each do |x|
        h << "    <li><a href=\"#{x.url}\">#{x.data['title'] || x.data['name']}</a> <span class=\"back-link-type\">(#{x.collection.label.capitalize})</span></li>"
      end
      h << '  </ul>' << '</div>'
      h.join("\n")
    end
  end
end

module Jekyll
  module AutoLinkFilter
    def auto_link(input)
      return input if input.nil? || input.empty?
      EarlyDays::AutoLinker.link_html(input, @context.registers[:page]['url'] || '', @context.registers[:site])
    end
  end
end

Liquid::Template.register_filter(Jekyll::AutoLinkFilter)

Jekyll::Hooks.register :site, :post_read do |site|
  Jekyll.logger.info 'AutoLinker:', 'Building lookup tables...'
  EarlyDays::AutoLinker.build_lookup(site)
  Jekyll.logger.info 'AutoLinker:', 'Lookup tables built.'
end

Jekyll::Hooks.register :site, :post_render do |site|
  Jekyll.logger.info 'AutoLinker:', 'Building backlinks...'
  EarlyDays::AutoLinker.build_backlinks(site)
  (site.pages + site.collections.values.flat_map(&:docs)).each do |doc|
    if doc.output&.include?('{% include back-links.html %}')
      h = EarlyDays::AutoLinker.render_backlinks(doc.url)
      doc.output = doc.output.sub('{% include back-links.html %}', h) unless h.empty?
    end

    # Final cleanup: remove any remaining placeholder markers
    if doc.output
      before = doc.output.scan(/___P[STELX]\d+___/).size
      doc.output.gsub!(/___P[STELX]\d+___/, '')
      after = doc.output.scan(/___P[STELX]\d+___/).size
      Jekyll.logger.info "AutoLinker:", "Cleaned #{before - after} placeholders from #{doc.url}" if before > after
    end
  end
  Jekyll.logger.info 'AutoLinker:', 'Backlinks injected.'
end

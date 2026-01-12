require "set"
require "time"

module EarlyDays
  module AutoLinker
    PLACEHOLDER_PREFIX = "<!--BACKLINKS:".freeze
    PLACEHOLDER_SUFFIX = "-->".freeze

    PRIORITY = {
      hidden: 4,
      videos: 3,
      articles: 2,
      people: 1,
      pages: 0
    }.freeze

    module_function

    def build_lookup(site)
      token_map = {}
      token_order = []
      doc_meta = {}

      site.collections.each do |label, collection|
        collection.docs.each do |doc|
          register_tokens(doc, label, token_map, token_order, doc_meta)
        end
      end

      token_order.sort_by! { |t| -t.length }
      token_regex = token_order.empty? ? nil : Regexp.union(token_order)

      site.config["autolink_lookup"] = {
        token_map: token_map,
        token_regex: token_regex,
        doc_meta: doc_meta
      }
      site.config["outgoing_links"] = Hash.new { |h, k| h[k] = Set.new }
      puts "autolinker: tokens=#{token_map.size}" if ENV["DEBUG_BACKLINKS"]
    end

    def document_meta(doc, label)
      hidden_flag = doc.data["hidden"]
      title = doc.data["title"] || doc.data["name"] || doc.basename_without_ext
      name = doc.data["name"]
      alias_val = doc.data["alias"]
      description = doc.data["description"]
      author = doc.data["author"]
      hosts = Array(doc.data["hosts"]).compact
      guests = Array(doc.data["guests"]).compact
      content = doc.content.to_s

      blob_parts = [
        content,
        title,
        name,
        alias_val,
        description,
        author,
        hosts.join(" "),
        guests.join(" ")
      ].compact.map { |s| s.to_s.gsub(/['"]/, "") }

      {
        url: doc.url,
        title: title,
        name: name,
        alias: alias_val,
        description: description,
        author: author,
        hosts: hosts,
        guests: guests,
        date: doc.data["date"],
        type: label.to_s,
        hidden: hidden_flag == true || hidden_flag == "true",
        search_blob: blob_parts.join(" ").downcase
      }
    end

    def register_tokens(doc, label, token_map, token_order, doc_meta)
      meta = document_meta(doc, label)
      doc_meta[doc.url] = meta

      tokens_for(doc, label).each do |token|
        normalized = token.to_s.strip
        next if normalized.empty?

        key = normalized.downcase
      priority = meta[:hidden] ? PRIORITY[:hidden] : PRIORITY[label.to_sym] || PRIORITY[:pages]
        existing = token_map[key]
        next if existing && existing[:priority] >= priority

        token_map[key] = meta.merge(token: normalized, priority: priority)
        token_order << normalized
      end
    end

    def tokens_for(doc, label)
      case label.to_s
      when "people"
        [doc.data["name"], doc.data["nickname"]]
      when "articles"
        [doc.data["title"], doc.data["alias"]]
      when "videos"
        [doc.data["title"]]
      else
        [doc.data["title"]]
      end.compact
    end

    def link_html(html, doc_url, site)
      lookup = site.config["autolink_lookup"]
      return html unless lookup

      return html if html.nil? || html.strip.empty?

      regex = lookup[:token_regex]
      token_map = lookup[:token_map]
      outgoing = site.config["outgoing_links"][doc_url]

      content = convert_markdown_links(html)
      content = redact_hidden(content, token_map)
      content, protected_no_auto = protect_no_auto_link(content)
      content, embeds = protect_embeds(content)

      process_fragment = lambda do |fragment|
        return fragment unless regex && token_map && fragment.bytesize <= 400_000

        fragment.split(/(<[^>]+>)/).map.with_index do |part, part_idx|
          next part if part_idx.odd?

          part.gsub(regex) do |match|
            entry = token_map[match.downcase]
            next match unless entry
            next match if entry[:url] == doc_url
            next match if entry[:hidden]

            outgoing << entry[:url]
            if entry[:hidden]
              %(<span class="hidden-autolink" data-original-name="#{match}" data-original-url="#{entry[:url]}">[REDACTED]</span>)
            else
              %(<a href="#{entry[:url]}">#{match}</a>)
            end
          end
        end.join
      end

      linked_html = process_fragment.call(content)

      embeds.each do |placeholder, original|
        linked_html = linked_html.gsub(placeholder, original)
      end

      linked_html = linked_html.gsub(%r{<li>\s*<a href="([^"]+)">\s*<a href="\1">(.*?)<\/a>\s*<\/a>\s*<\/li>}m, '<li><a href="\1">\2</a></li>')
      protected_no_auto.each do |placeholder, original|
        linked_html = linked_html.gsub(placeholder, original)
      end

      record_explicit_links(linked_html, doc_url, site)
      linked_html
    end

    def convert_markdown_links(str)
      return str if str.nil? || str.empty?

      str.gsub(/\[([^\]]+)\]\(([^)\s]+)\)/) do
        text = Regexp.last_match(1)
        href = Regexp.last_match(2)
        %(<a href="#{href}">#{text}</a>)
      end
    end

    def redact_hidden(html, token_map)
      hidden_entries = token_map.values.select { |v| v[:hidden] }
      result = html.dup

      hidden_entries.each do |entry|
        result, protected_spans = protect_hidden_spans(result)

        label = entry[:name] || entry[:title] || entry[:token]
        next unless label

        redaction = %(<span class="hidden-autolink" data-original-name="#{label}" data-original-url="#{entry[:url]}">[REDACTED]</span>)

        # Remove existing links to the hidden entry
        href_pattern = Regexp.escape(entry[:url])
        link_regex = %r{<a[^>]+href\s*=\s*["']#{href_pattern}[^"']*["'][^>]*>(.*?)<\/a>}im
        result = result.gsub(link_regex) do
          link_text = Regexp.last_match(1)
          %(<span class="hidden-autolink" data-original-name="#{link_text}" data-original-url="#{entry[:url]}">[REDACTED]</span>)
        end

        # Replace plain text occurrences outside already-protected spans
        result = result.gsub(label, redaction)

        protected_spans.each do |placeholder, original|
          result = result.gsub(placeholder, original)
        end
      end

      result
    end

    def protect_hidden_spans(str)
      spans = []
      output = str.gsub(/<span class="hidden-autolink"[^>]*>.*?<\/span>/im) do |match|
        placeholder = "___HIDDEN_SPAN_#{spans.length}___"
        spans << [placeholder, match]
        placeholder
      end
      [output, spans]
    end

    def protect_embeds(html)
      embeds = []
      result = +""
      idx = 0
      while (start = html.index('<div class="blog-embed-card', idx))
        result << html[idx...start]
        segment = html[start..-1]

        div_count = 1
        cursor = '<div'.length
        end_pos = nil

        while cursor < segment.length
          next_open = segment.index('<div', cursor)
          next_close = segment.index('</div>', cursor)

          if next_open && next_open < next_close
            div_count += 1
            cursor = next_open + 4
          elsif next_close
            div_count -= 1
            cursor = next_close + 6
            if div_count <= 0
              end_pos = cursor
              break
            end
          else
            break
          end
        end

        end_pos ||= segment.length
        block = segment[0...end_pos]
        placeholder = "___CONTENT_EMBED_#{embeds.length}___"
        embeds << [placeholder, block]
        result << placeholder
        idx = start + end_pos
      end

      result << html[idx..-1] if idx && idx < html.length
      [result, embeds]
    end

    def protect_no_auto_link(html)
      protect_generic(html, /<span class="no-auto-link-marker">.*?<\/span>/m, "NOAUTO")
    end

    def protect_generic(html, regex, tag)
      items = []
      output = html.gsub(regex) do |match|
        placeholder = "___#{tag}_#{items.length}___"
        items << [placeholder, match]
        placeholder
      end
      [output, items]
    end

    def record_explicit_links(html, doc_url, site)
      lookup = site.config["autolink_lookup"]
      return unless lookup
      doc_meta = lookup[:doc_meta]
      return unless doc_meta

      outgoing = site.config["outgoing_links"][doc_url]
      hrefs = html.scan(/href\s*=\s*"(.*?)"|href\s*=\s*'(.*?)'/i).flatten.compact
      hrefs.each do |href|
        normalized = normalize_href(href, site)
        next unless normalized
        target_url = if doc_meta.key?(normalized)
          normalized
        elsif normalized.end_with?("/") && doc_meta.key?(normalized.chomp("/"))
          normalized.chomp("/")
        elsif doc_meta.key?(normalized + "/")
          normalized + "/"
        end
        next unless target_url

        outgoing << target_url
      end
    end

    def normalize_href(href, site)
      return nil if href.nil? || href.empty?
      return nil if href.start_with?("#", "mailto:", "tel:")

      clean = href.split("#").first.split("?").first
      return nil if clean.nil? || clean.empty?

      site_url = site.config["url"].to_s
      clean = clean.sub(/^#{Regexp.escape(site_url)}/, "") unless site_url.empty?

      baseurl = site.config["baseurl"].to_s
      clean = clean.sub(/^#{Regexp.escape(baseurl)}/, "") unless baseurl.empty?

      clean = "/" + clean unless clean.start_with?("/")
      clean = clean.sub(/\/index\.html$/, "/")
      clean
    end

    def build_backlinks(site)
      lookup = site.config["autolink_lookup"]
      return unless lookup

      doc_meta = lookup[:doc_meta]
      docs = doc_meta.values
      backlinks = Hash.new { |h, k| h[k] = [] }

      docs.each do |target|
        docs.each do |source|
          next if source[:url] == target[:url]

          # Skip hidden articles/people as sources
          if source[:hidden] && (source[:type] == "articles" || source[:type] == "people")
            next
          end

          entry = {
            url: source[:url],
            title: source[:title],
            name: source[:name],
            date: source[:date],
            type: source[:type]
          }

          # Inbound backlinks (source references target)
          if references?(source[:search_blob], target)
            backlinks[target[:url]] << entry unless backlinks[target[:url]].any? { |e| e[:url] == source[:url] }
            next
          end

          # Reciprocal backlinks (target references source)
          if references?(target[:search_blob], source)
            backlinks[target[:url]] << entry unless backlinks[target[:url]].any? { |e| e[:url] == source[:url] }
          end
        end
      end

      site.data["backlink_map"] = backlinks
    end

    def references?(search_blob, candidate)
      return false if search_blob.nil? || search_blob.empty?
      return false if candidate[:hidden] && (candidate[:type] == "articles" || candidate[:type] == "people")

      target_urls = [candidate[:url]]
      target_urls << candidate[:url].chomp("/") if candidate[:url].end_with?("/")
      target_urls << "#{candidate[:url]}/" unless candidate[:url].end_with?("/")
      target_urls.uniq!
      return true if target_urls.any? { |u| search_blob.include?(u.downcase) }

      if candidate[:title]
        return true if search_blob.include?(candidate[:title].to_s.gsub(/['"]/, "").downcase)
      end
      if candidate[:name]
        return true if search_blob.include?(candidate[:name].to_s.gsub(/['"]/, "").downcase)
      end
      if candidate[:alias]
        return true if search_blob.include?(candidate[:alias].to_s.gsub(/['"]/, "").downcase)
      end

      if candidate[:type] == "people"
        # author match
        author_clean = candidate[:name].to_s.gsub(/['"]/, "").downcase
        return true if !author_clean.empty? && search_blob.include?(author_clean)
      end

      false
    end

    def replace_backlink_placeholders(site)
      backlink_map = site.data["backlink_map"] || {}
      docs = site.collections.values.flat_map(&:docs) + site.pages

      docs.each do |doc|
        next unless doc.respond_to?(:output)
        output = doc.output
        next unless output

        output = output.gsub(/#{Regexp.escape(PLACEHOLDER_PREFIX)}(.*?)#{Regexp.escape(PLACEHOLDER_SUFFIX)}/) do
          target_url = Regexp.last_match(1)
          html = render_backlinks_html(backlink_map[target_url])
          puts "backlinks: #{target_url} -> #{backlink_map[target_url]&.size.to_i}" if ENV["DEBUG_BACKLINKS"]
          html
        end

        doc.output = output
      end
    end

    def render_backlinks_html(backlinks)
      return "" unless backlinks && !backlinks.empty?

      content_links = backlinks.select { |b| b[:type] == "articles" || b[:type] == "videos" }
      people_links = backlinks.select { |b| b[:type] == "people" }

      html = +"<div class=\"back-links-section\">\n"
      html << "  <h2>Back-links</h2>\n"
      html << "  <p class=\"back-links-description\">Other pages that reference this:</p>\n"
      html << "  <ul class=\"back-links-list\">\n"

      content_links.sort_by { |b| sort_date_key(b[:date]) }.each do |backlink|
        type_label = format_type(backlink[:type])
        date_text = backlink[:date].respond_to?(:strftime) ? ", #{backlink[:date].strftime('%B %d, %Y')}" : ""
        title = backlink[:title] || backlink[:name]
        html << "    <li>\n"
        html << "      <a href=\"#{backlink[:url]}\">#{title}</a>\n"
        html << "      <span class=\"back-link-type\">(#{type_label}#{date_text})</span>\n"
        html << "    </li>\n"
      end

      people_links.sort_by { |b| b[:name].to_s }.each do |backlink|
        type_label = format_type(backlink[:type])
        title = backlink[:title] || backlink[:name]
        html << "    <li>\n"
        html << "      <a href=\"#{backlink[:url]}\">#{title}</a>\n"
        html << "      <span class=\"back-link-type\">(#{type_label})</span>\n"
        html << "    </li>\n"
      end

      html << "  </ul>\n</div>\n"
      html
    end

    def format_type(type)
      return "" unless type
      str = type.to_s
      first = str[0]&.upcase.to_s
      remainder = str.length > 1 ? str[1..] : ""
      first + remainder
    end

    def sort_date_key(value)
      return 0 if value.nil?
      return value.to_f if value.is_a?(Time)
      return value.to_time.to_f if value.respond_to?(:to_time)
      Time.parse(value.to_s).to_f
    rescue StandardError
      0
    end
  end
end

module EarlyDays
  module AutoLinkFilter
    def auto_link(input, doc_url = nil)
      site = @context.registers[:site]
      doc_url ||= @context.registers[:page]["url"]
      EarlyDays::AutoLinker.link_html(input.to_s, doc_url, site)
    end
  end
end

Liquid::Template.register_filter(EarlyDays::AutoLinkFilter)

Jekyll::Hooks.register :site, :post_read do |site|
  EarlyDays::AutoLinker.build_lookup(site)
end

Jekyll::Hooks.register :site, :post_render do |site|
  EarlyDays::AutoLinker.build_backlinks(site)
  EarlyDays::AutoLinker.replace_backlink_placeholders(site)
end

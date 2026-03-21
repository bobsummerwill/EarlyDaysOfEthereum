# frozen_string_literal: true

module EarlyDays
  # Ensures hidden pages stay out of search results and the sitemap.
  class HiddenPageSeo < Jekyll::Generator
    priority :lowest

    def generate(site)
      documents = site.pages.dup
      site.collections.each_value do |collection|
        documents.concat(collection.docs)
      end

      documents.each do |document|
        next unless hidden?(document)

        document.data['noindex'] = true if document.data['noindex'].nil?
        document.data['sitemap'] = false if document.data['sitemap'].nil?
      end
    end

    private

    def hidden?(document)
      value = document.data['hidden']
      value == true || value.to_s.downcase == 'true'
    end
  end
end

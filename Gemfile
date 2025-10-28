source "https://rubygems.org"

# Core Jekyll
gem "jekyll", "~> 3.10.0"
gem "kramdown-parser-gfm", "~> 1.1"

# Ruby 3.4+ compatibility - these gems are no longer included by default
gem "base64"
gem "logger"
gem "bigdecimal"

# Jekyll plugins
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.17"
  gem "jekyll-sitemap", "~> 1.4"
end

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :windows, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :platforms => [:windows]

# Lock `http_parser.rb` gem to `v0.6.x` on JRuby builds since newer versions of the gem
# do not have a Java counterpart.
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]

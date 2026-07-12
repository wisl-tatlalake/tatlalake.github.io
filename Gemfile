source "https://rubygems.org"

gem "jekyll", "~> 4.3"
gem "minimal-mistakes-jekyll", "~> 4.26"

group :jekyll_plugins do
  gem "jekyll-include-cache", "~> 0.2" # required by minimal-mistakes
  gem "jekyll-feed", "~> 0.17"         # generates /feed.xml (linked by the theme)
  gem "jekyll-sitemap", "~> 1.4"
  gem "jekyll-minifier", "~> 0.1"
end

# Link / HTML checker, run in CI after the build (not a Jekyll plugin).
group :test do
  gem "html-proofer", "~> 5.0"
end

# Windows / JRuby support and faster file watching
gem "webrick", "~> 1.8"

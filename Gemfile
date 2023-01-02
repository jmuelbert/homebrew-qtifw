
# frozen_string_literal: true
source "https://rubygems.org"

gem "rake"

# gemspec

# Required for running `jekyll algolia ...` (via `rake site:update_search_index`)
group :jekyll_plugins do
  if RUBY_VERSION >= "2.3"
    gem 'jekyll-algolia', '~> 1.6.0'
  end
  gem 'jekyll-redirect-from'
end

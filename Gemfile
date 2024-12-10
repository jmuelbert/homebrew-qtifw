# frozen_string_literal: true

source "https://rubygems.org"

# gemspec

ruby ">=2.6.10"

group :test do
  gem "activesupport", "< 8" # 7 requires Ruby 2.7
  gem "rspec"
  gem "simplecov"
end

gem "code-scanning-rubocop", "~> 0.6.1"
gem "debug", platform: :mri if RUBY_VERSION >= "3.1.0"
gem "google-protobuf", "~> 4.28.2"
gem "rake", "~> 13.2"
gem "rubocop", "~> 1.65"
gem "rubocop-changes", "~> 0.8.1"
gem "rubocop-config-prettier", "~> 0.1.13"
gem "rubocop-git", "~> 0.1.3"
gem "rubocop-gitlab-security", "~> 0.1.1"
gem "rubocop-i18n", "~> 3.0.0"
gem "rubocop-md", "~> 1.2.2"
gem "rubocop-minitest", "~> 0.35.1"
gem "rubocop-packaging", "~> 0.5.2"
gem "rubocop-performance", "~> 1.23.0"
gem "rubocop-rails", "~> 2.26.2"
gem "rubocop-rake", "~> 0.6.0"
gem "rubocop-rspec", "~> 3.2"
gem "rubocop-thread_safety", "~> 0.6.0"

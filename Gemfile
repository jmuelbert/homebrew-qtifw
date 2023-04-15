# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gemspec

ruby '>=3.1'

gem 'rake', '~> 13.0'

gem "google-protobuf"
gem "rubocop"
gem "rubocop-performance"
gem "rubocop-thread_safety"
gem "simplecov"

gem "debug", platform: :mri if RUBY_VERSION >= "3.1.0"

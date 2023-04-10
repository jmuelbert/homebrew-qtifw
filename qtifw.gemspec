# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'qtifw'
  s.version     = File.read(File.expand_path('VERSION', __dir__)).strip
  s.authors     = ['Jürgen Mülbert']
  s.description = 'QT Installer formula for HomeBrew'
  s.summary     = "qtifw-#{s.version}"
  s.email       = 'juergen.muelbert@web.de'
  s.license     = 'EUPL-1.2'
  s.homepage    = 'https://github.com/jmuelbert/homebrew-qtifw/'
  s.platform    = Gem::Platform::RUBY

  s.metadata    = {
    'bug_tracker_uri' => 'https://github.com/jmuelbert/homebrew-qtifw/issues',
    'changelog_uri' => 'https://github.com/jmuelbert/homebrew-qtifw/blob/main/CHANGELOG.md',
    'documentation_uri' => 'https://jmuelbert.github.io/homebrew-qtifw/',
    'source_code_uri' => 'https://github.com/jmuelbert/homebrew-qtifw'
  }

  # Keep in sync with .circleci/config.yml & .rubocop.yml
  s.required_ruby_version = '>= 3.1'
  s.add_dependency 'builder', '~> 3.2', '>= 3.2.4'

  s.add_development_dependency 'nokogiri', '~> 1.13', '>= 1.13.6'
  s.add_development_dependency 'pry', '~> 0.14', '>= 0.14.1'
  s.add_development_dependency 'rake', '~> 13.0', '>= 13.0.6'
  s.add_development_dependency 'rspec', '~> 3.11', '>= 3.11.0'
  s.add_development_dependency 'simplecov', '~> 0.21', '>= 0.21.2'
  s.add_development_dependency 'syntax', '~> 1.2', '>= 1.2.2'
  s.add_development_dependency 'test-unit', '~> 3.5', '>= 3.5.3'
  s.add_development_dependency 'webrick', '~> 1.7', '>= 1.7.0'

  # For maintainer scripts
  s.add_development_dependency 'octokit', '~> 4.22', '>= 4.22.0'

  # Needed for examples (rake examples)
  s.add_development_dependency 'capybara', '~> 3.36', '>= 3.36.0', '< 3.40'
  s.add_development_dependency 'rack-test', '>= 1.1.0', '~> 2.0'
  s.add_development_dependency 'sinatra', '>= 2.2.0', '~> 3.0'

  s.required_rubygems_version = '>= 1.6.1'
  s.files = Dir[
    'CHANGELOG.md',
    'CONTRIBUTING.md',
    'README.md',
    'LICENSE'
  ]
  s.executables      = ['qtifw']
  s.rdoc_options     = ['--charset=UTF-8']
  s.require_path     = 'lib'
end

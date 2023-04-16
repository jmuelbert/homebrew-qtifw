# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name        = 'qtifw'
  spec.version     = File.read(File.expand_path('VERSION', __dir__)).strip
  spec.authors     = ['Jürgen Mülbert']
  spec.description = 'QT Installer formula for HomeBrew'
  spec.summary     = "qtifw-#{spec.version}"
  spec.email       = 'juergen.muelbert@web.de'
  spec.license     = 'EUPL-1.2'
  spec.homepage    = 'https://github.com/jmuelbert/homebrew-qtifw/'
  spec.platform    = Gem::Platform::RUBY

  spec.metadata    = {
    'bug_tracker_uri' => 'https://github.com/jmuelbert/homebrew-qtifw/issues',
    'changelog_uri' => 'https://github.com/jmuelbert/homebrew-qtifw/blob/main/CHANGELOG.md',
    'documentation_uri' => 'https://jmuelbert.github.io/homebrew-qtifw/',
    'source_code_uri' => 'https://github.com/jmuelbert/homebrew-qtifw'
  }

  spec.required_ruby_version = '>= 3.1'

  spec.files = Dir['LICENSE', 'CHANGELOG.md', 'README.md', 'Formula/**/*.rb', 'sig/**/*.rbs']
  spec.extra_rdoc_files = Dir['LICENSE', 'CHANGELOG.md', 'README.md']

  spec.require_paths = ['Formula']
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'tzinfo'

  spec.executables      = ['qtifw']
  spec.rdoc_options     = ['--charset=UTF-8']
end

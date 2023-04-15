# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs = %w[lib test]
  t.pattern = 'test/*_test.rb'
  t.warning = false
end

begin
  require 'rubocop/rake_task'
  desc 'Run rubocop'
  RuboCop::RakeTask.new
rescue LoadError # rubocop:disable Lint/SuppressedException
end

namespace :coverage do
  desc 'Aggregates coverage reports'
  task :report do
    return unless ENV.key?('CI')

    require 'simplecov'

    SimpleCov.collate Dir['coverage/**/.resultset.json']
  end
end

task default: %i[test]


require 'rake/clean'
CLEAN.include %w[**/*.{log,pyc,rbc,tgz} doc]

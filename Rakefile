require 'rubygems'
require 'bundler'

Bundler::GemHelper.install_tasks

# $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
# Dir['gem_tasks/**/*.rake'].each { |rake| load rake }

require 'rubocop/rake_task'
RuboCop::RakeTask.new

task :doit do
    puts "Done"
end

default_tasks = %i[doit]

task default: default_tasks

require 'rake/clean'
CLEAN.include %w[**/*.{log,pyc,rbc,tgz} doc]

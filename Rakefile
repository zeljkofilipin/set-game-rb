require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

require 'rubocop/rake_task'
RuboCop::RakeTask.new

desc 'run all tasks'
task default: [:rubocop, :spec]

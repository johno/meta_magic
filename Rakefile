require 'bundler/gem_tasks'

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new

task default: :spec
task test: :spec

task :build do
  system 'gem build meta_magic.gemspec'
end
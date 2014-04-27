require 'rake'
require 'rspec/core/rake_task'

task :spec => "spec:all"

roles = `git ls-files spec`.split
  .map {|f| f.split('/')[1]}
  .uniq
  .select {|dir| File.directory? "spec/#{dir}"}

namespace :spec do
  task :all => roles

  roles.each do |r|
    desc "Run serverspec code for #{r}"
    RSpec::Core::RakeTask.new("#{r}") do |t|
      ENV["ROLE"] = r
      t.pattern = "spec/#{r}/*_spec.rb"
    end
  end
end

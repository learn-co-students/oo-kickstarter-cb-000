require_relative './lib/backer'
require_relative './lib/project'

require 'pry'
require 'rake'

puts "Welcoe to Kickstarter"

def reload!
  load "./lib/backer.rb"
  load "./lib/project.rb"
end

desc "A Console"
task :console do
  Pry.start
end

require 'pry'

class Backer

  attr_accessor :name

  def initialize(name)
  @name = name
  @backed_projects = []
end

def back_project(project)
  @backed_projects << project
  project.add_backer(self)

end

def add_backer(project)
  @backed_projects << project
end

  # def add_backer(backer)
  #   @backers << backer
  #   backer.back_project(rope)
  # ropes.add_backer(arel)

def backed_projects
 @backed_projects
end

end
# bob = Backer.new("Bob")
# awesome_project = Project.new("This is an Awesome Project")
#
# bob.back_project(awesome_project)
#
# bob.backed_projects
# # => [#<Project:0x000001018683d0 @title="This is an Awesome Project"...>]

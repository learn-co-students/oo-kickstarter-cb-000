class Backer
  attr_accessor :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project) #=> Adds project to backed_projects array.
    @backed_projects << project
    project.backers << self
  end

  def backed_projects #=> Returns array of backed_projects.
    @backed_projects
  end
end

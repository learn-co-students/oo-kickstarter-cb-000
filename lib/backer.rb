class Backer
  attr_accessor :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project #=> Adds project to backed_projects array.
    project.backers << self #=> Adds backer to Project @backers array.
  end

  def backed_projects #=> Returns array of backed_projects.
    @backed_projects
  end
end

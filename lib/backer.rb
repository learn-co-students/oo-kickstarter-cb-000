class Backer
  attr_accessor :name, :backed_projects

  def initialize (name)
    @name = name
    @backed_projects = []
  end

  def back_project(newProject)
    @backed_projects << newProject
    newProject.backers << self
  end

end

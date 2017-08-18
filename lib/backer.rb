class Backer
  attr_accessor :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = Array.new
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
end

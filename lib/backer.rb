class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = Array.new
  end

  def back_project(project)
    project.backers << self
    self.backed_projects << project
  end
end

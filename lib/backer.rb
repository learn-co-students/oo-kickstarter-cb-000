class Backer
  attr_reader :name, :projects
  def initialize(name)
    @name = name
    @projects = []
  end

  def back_project(project)
    self.projects << project
    project.add_backer(self)
  end

  def backed_projects
    self.projects
  end
end

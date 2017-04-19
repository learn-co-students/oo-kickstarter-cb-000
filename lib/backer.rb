class Backer
  attr_accessor :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.add_backer(self) unless project.backers.include?(self)
  end

  def backed_projects
    @backed_projects.dup.freeze
  end

end

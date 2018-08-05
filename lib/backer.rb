class Backer

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    project.backers << self
  end

  def backed_projects
    Project.all.select do |project|
      project.backers.include? self
    end
  end

end

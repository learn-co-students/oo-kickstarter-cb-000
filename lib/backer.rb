class Backer
  attr_accessor :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project_name)
    @backed_projects << project_name
    project_name.backers << self
  end
end
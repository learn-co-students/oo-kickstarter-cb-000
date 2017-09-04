class Backer
  attr_accessor :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(proj)
    unless @backed_projects.include?(proj)
    @backed_projects << proj 
    proj.add_backer(self)
  end
  end

end

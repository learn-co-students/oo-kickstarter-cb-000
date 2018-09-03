class Backer
  attr_accessor :name, :backed_projects, :projects
  @@all = []
  def initialize(name)
    @name = name
    @backed_projects = []
    @@all << self
  end
  def back_project(project)
    a = Project.find_or_create(project)
    @backed_projects << a
    a.backers << self
  end
  def self.all
    @@all
  end
end

class Backer

  attr_accessor :backed_projects, :name

  def initialize(name)
    @name=name
    @backed_projects = []

  end #initialize

  def back_project(project)
    @backed_projects << project
    # puts "#{project}"
    project.backers << self
  end
end #class

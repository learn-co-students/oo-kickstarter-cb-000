class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = [ ]
  end 
  #The back_project method accepts a Project as an argument and stores 
  #it in the backed_projects array
  #We are also telling the project to add the Backer instance to the @backers array
  #That is located in the Project class.
  def back_project(project)
    @backed_projects << project
    project.backers << self 
    
  end

end
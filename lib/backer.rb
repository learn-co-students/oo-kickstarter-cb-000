class Backer

  attr_accessor :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    #add project to backed projects for this backer
    @backed_projects << project
    #then add backer, self, to array of project.backers
    project.backers << self
    # project.add_backer(self)
    #
    # @backers << backer
  end

end

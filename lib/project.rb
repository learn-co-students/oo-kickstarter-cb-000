class Project
  attr_accessor :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    #first add the backer to all backers of the project
    @backers << backer
    #then add the project, self, to the array backed_projects of the backer
    # @backed_projects << project
    backer.backed_projects << self

  end
end

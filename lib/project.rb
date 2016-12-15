class Project
  attr_accessor :title, :backers


  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
  # also adds the project to the backer\'s backed_projects array
end

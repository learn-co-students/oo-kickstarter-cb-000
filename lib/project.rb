class Project
  attr_accessor :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer) 
    @backers << backer #=> Adds a project's backer to @backer array.
    backer.backed_projects << self #=> Adds this project to Backers @backed_projects array.
  end

  def backers #=> Returns an array of project backers.
    @backers
  end
end

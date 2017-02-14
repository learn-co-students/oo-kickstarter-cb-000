class Project
  attr_accessor :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer) #=> Adds a project's backer to @backer array.
    @backers << backer
    backer.backed_projects << self
  end

  def backers #=> Returns an array of project backers.
    @backers
  end
end

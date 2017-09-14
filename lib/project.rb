class Project

  attr_accessor :backers, :title

  def initialize(title)
    @backers = []
    @title=title
  end #initialize

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
end #class

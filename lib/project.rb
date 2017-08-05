class Project
  attr_accessor :title, :backers

  def initialize(name)
    @title = name
    @backers = []
  end

  def add_backer(newBacker)
    @backers << newBacker
    newBacker.backed_projects << self
  end

end

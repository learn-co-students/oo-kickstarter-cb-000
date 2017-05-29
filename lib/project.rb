class Project
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = Array.new
  end

  def add_backer(backer)
    backer.backed_projects << self
    self.backers << backer
  end

end

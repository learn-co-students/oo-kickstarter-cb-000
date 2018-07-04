class Project
  
  attr_accessor :title, :backers

  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    backer.backed_projects.push(self)
    self.backers.push(backer)
  end
end
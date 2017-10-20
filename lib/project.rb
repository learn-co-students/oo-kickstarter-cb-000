class Project
  attr_accessor :title, :backers, :backer

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(back)
    backers<<back
    back.backed_projects<<self
  end



end


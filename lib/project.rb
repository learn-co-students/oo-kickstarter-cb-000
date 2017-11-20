class Project
  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    if self.backers.include?(backer)
      backer
    else
      self.backers << backer
      backer.back_project(self)
    end
  end

end

class Project
  attr_reader :title, :backers

  def initialize(title)
    @title=title
    @backers=[]

  end

  def add_backer(backer)
    @backers << backer
    # feel like its not me here..
    # binding.pry
    backer.back_project(self)
  end
end

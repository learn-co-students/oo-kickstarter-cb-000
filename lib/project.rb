class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    if @backers.include?(backer) # this implements control flow w/out it you will have an infinite loop.
    else
        @backers << backer # adds a backer to backers array and takes that same person and adds them to the project class
        backer.back_project(self)
    end
  end


end

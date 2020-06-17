class Project
  attr_reader :title
  

  def initialize(title)
    @title = title
    @backers = [] 
  end

  def add_backer(backer)
    if backer.is_a?(Backer)
      @backers << backer  unless @backers.include?(backer)
      backer.back_project(self) unless backer.backed_projects.include?(self)  
    end
  end

  def backers
    @backers.dup.freeze 
  end
  
end

class Project
  attr_accessor :title 
  attr_reader :backers, :backer
  
  def initialize(title)
    @title = title
    @backer= backer 
    @backers= []
  end 
  
  def add_backer(backer)
    @backers << backer 
    backer.backed_projects << self
  end 

end 
class Project
  attr_accessor :title, :backers
  
  def initialize(title)
    @title = title
    @backers = [ ]
  end 
  
  #The add_backer method accepts a Backer as an argument and stores it in a backers array
  #We are also telling the backer to add the Project instance to the @backed_projects 
  #array that is located in the Backer class.
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self 
  end

end 
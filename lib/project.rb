class Project
  attr_reader :title
  attr_accessor :backers

  def initialize(title)
    @title=title
    @backers=[]

  end

  def add_backer(backer)
    # @backers << backer
# binding.pry
if !@backers.include? backer
# not sure what it would be
@backers << backer
backer.back_project(self)

end
    # not sure what it would be
    # backer.back_project(self)
    # cant even get there
    # binding.pry

  end
end

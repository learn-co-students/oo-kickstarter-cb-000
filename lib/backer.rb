class Backer
  # When a Backer instance is initialized, it should be initialized with a @backed_projects variable set to an empty array. Instances of the Backer class should have an attr_accessor for backed projects so that projects can be added to a backer's list and so that the backer can report on the projects they back
  attr_accessor :name, :backed_projects

  # takes a name on initialization
  def initialize(name)
    @name = name
    @backed_projects = []
  end
end

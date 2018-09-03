require 'pry'
class Project
  attr_accessor :title, :backers
  @@all = []
  def initialize(title)
    @title = title
    @backers = []
    @@all << self
  end
  def add_backer(backer)
    @backers << backer
    @backers.map {|backer| backer.backed_projects << self}
  end
  def self.find_or_create(project)
    if @@all.include?(project)
      project
    else
      Project.new(project)
    end
  end
end

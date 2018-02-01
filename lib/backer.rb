class Backer

	attr_accessor :backed_projects, :name

	def initialize(name)
		@name = name
		@backed_projects = []
	end

	def back_project(title)
    self.backed_projects << title
    title.backers << self
	end


end

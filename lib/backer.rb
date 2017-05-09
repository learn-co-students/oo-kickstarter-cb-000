class Backer
	attr_accessor :name, :backed_projects

	def initialize(name)
		@name = name
		@backed_projects = []
	end

	def back_project(project)
		@backers = project.backers
		@backed_projects.push(project)
		project.add_backer(self)
		@backed_projects
	end

end

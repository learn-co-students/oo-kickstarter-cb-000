class Backer

	attr_accessor :name, :backed_projects

	def initialize(name)
		@name = name
		@backed_projects = []
	end

	def back_project(project, add_to_project=true)
		@backed_projects << project
		project.add_backer(self, false) if add_to_project
	end

end
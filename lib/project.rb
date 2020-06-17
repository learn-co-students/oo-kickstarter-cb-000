class Project

	attr_accessor :title, :backers

	def initialize(title)
		@title = title
		@backers = []
	end

	def add_backer(backer, add_to_backer=true)
		@backers << backer
		backer.back_project(self, false) if add_to_backer
	end

end
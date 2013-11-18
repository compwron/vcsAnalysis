class Card
	attr_reader :name

	def initialize name, commits, devs
		@name = name
		@commits = commits
		@devs = devs
	end

end
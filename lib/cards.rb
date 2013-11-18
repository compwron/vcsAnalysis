class Cards
	include Enumerable
	attr_reader :name
	def initialize commits
		@cards = by_card(commits)
	end

	def by_card commits
	end
end
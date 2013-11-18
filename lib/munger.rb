class Munger
	def initialize commits
		@commits = commits
	end

	def by_card
		Cards.new(@commits).commits_by_card.map{|card|
			"#{card.name} ... #{card.commits.size} commit ... devs: #{card.devs}"
		}
	end
end
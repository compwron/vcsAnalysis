class Cards
  include Enumerable
  require_relative 'card'
  attr_accessor :commits_by_card

  def initialize commits
    @commits_by_card = by_card(card_names(commits), commits)
  end

  def card_names commits
    commits.map { |commit|
      commit.card_number
    }.uniq
  end

  def by_card cards, commits
    cards.map { |card_name|
      {card_name => commits.select { |commit| commit.card_number == card_name }}
    }.inject({}) { |result, element|
      result.merge(element)
    }.map{|card_name, commits|
      Card.new(card_name, commits)
    }
  end
end
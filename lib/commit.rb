class Commit
  attr_accessor :card_number

  def initialize line, devs_in_commit, card_number
    @line = line
    @devs = devs_in_commit
    @card_number = card_number
  end
end
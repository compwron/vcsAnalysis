class Commits
  include Enumerable
  require_relative 'commit'
  
  # Commits.new(Parser.new(opts[:root], opts[:after]).lines, opts[:devnames], opts[:cardprefix])
  def initialize lines, dev_names, card_prefix
    @commits = lines.map { |line| Commit.new(line, devs_in(line, dev_names), card_in(line, card_prefix)) }
  end

  def devs_in(line, dev_names)
  end

  def card_in(line, card_prefix)
  end

  def each &block
    commits.each &block
  end


  private
  attr_reader :commits
end
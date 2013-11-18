class Commits
  include Enumerable
  require_relative 'commit'

  def initialize lines, dev_names, card_prefix
    @commits = lines.map { |line| Commit.new(line, devs_in(line, dev_names), card_in(line, card_prefix)) }
  end

  def devs_in(line, dev_names)
    dev_names.split(" ").select { |dev_name| line.include?(dev_name) }
  end

  def card_in(line, card_prefix)
    regex = /(#{card_prefix}\d+)/
    matcher = line.match(regex)
    matcher.nil? ? nil : (line.match regex)[1]
  end

  def each &block
    commits.each &block
  end

  private
  attr_reader :commits
end
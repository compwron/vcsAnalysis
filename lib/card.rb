class Card
  require 'yamler'
  attr_reader :name, :commits, :devs

  def initialize name, commits
    @name = name
    @commits = commits
    @devs = devs_in(commits)
  end

  def devs_in commits
    devs = YAML.parse("config/devs.yml")
    commits.select { |commit|
      devs.any? { |dev| commit.line.include?(dev) }
    }
  end
end
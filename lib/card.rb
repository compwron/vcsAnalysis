class Card
  require 'yamler'
  attr_reader :name, :commits, :devs

  def initialize name, commits
    @name = name
    @commits = commits
    @devs = devs_in(commits)
  end

  def devs_in commits
    config = YAML.load_file("/tmp/vcsAnalysis/devs.yml")
    devs = config['devs'].split(" ")
    devs.select { |dev_name|
      @commits.any? { |commit| commit.line.include?(dev_name) }
    }.join(", ")
  end
end
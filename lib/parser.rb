class Parser
  attr_reader :lines

  def initialize(git_root, start_date)
    @lines = `git --git-dir=#{git_root}/.git log --pretty=format:'%ai %s' --since=#{format(start_date)}`.split("\n")
  end

  def format(date)
    date.strftime("%Y-%m-%d")
  end
end
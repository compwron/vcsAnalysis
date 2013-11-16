require_relative "spec_helper"
describe Parser do

  let(:git_root) { 'fake_git' }
  let(:start_date) { Date.today }

  subject { Parser.new git_root, start_date }

  def create_commit message
    `cd #{git_root} && echo bar >> foo.txt && git add . && git commit -m "#{message}"`
  end

  before :each do
    `mkdir #{git_root} && git init #{git_root}`
  end

  after :each do
    `rm -rf #{git_root}`
  end

  describe "#initialize" do
    it "should get raw text of log lines" do
    	create_commit("This is a commit")
    	subject.lines.size.should == 1
    	subject.lines.first.should include("This is a commit")
    end
  end
end

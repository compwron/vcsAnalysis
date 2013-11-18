require_relative "spec_helper"
describe Munger do

  subject { Munger.new }

  before do
  end

  describe "#by_card" do
    it "should output data formatted by card" do
    	commits = Commits.new(["FOO-100 [Alice, Bob] stuff"], "Alice Bob", "FOO-")
    	Munger.new(commits).by_card.should == ["FOO-100 ... 1 commit ... devs: Alice, Bob"]
    end
  end
end

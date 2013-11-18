require_relative "spec_helper"

describe Commits do

  let(:lines) { ["commit 1", "commit 2"] }
  let(:devnames) { "Alice Bob" }

  subject { Commits.new(lines, devnames, "FOO-") }

  before do
  end

# Commits.new(Parser.new(opts[:root], opts[:after]).lines, opts[:devnames], opts[:cardprefix])
# describe "#method_name" do
# it "should do stuff because x" do
# subject.
# end
# end
end

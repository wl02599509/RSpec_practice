RSpec.describe "after_hook" do
  # let(:arr) { arr = [] }
  before do
    @arr = []
  end

  after "clear all" do
    @arr = []
  end

  it "hook" do
    @arr << "hook"
    @arr.push("abc")
    @arr.unshift(123)
    expect(@arr.length).to eq(3)
    p @arr
  end

  it "test" do
    @arr << "test"
    p @arr
  end
end
RSpec.describe "after_hook" do
  let(:arr) { arr = [] }

  after "clear all" do
    arr.clear
    p arr
  end

  it "hook" do
    arr << "hook"
    p arr
    arr.push("abc")
    p arr
    arr.unshift(123)
    p arr
    p arr.length
    expect(arr.length).to eq(3)
  end
end
RSpec.describe "odd? even? empty?" do
  let(:a) { 123 }
  let(:b) { 456 }
  let(:c) { [] } 

  it "should be true" do
    expect(a).to be_odd
  end

  it "should be true" do
    expect(b).to be_even
  end

  it "should be true" do
    expect(c).to be_empty
  end

  it "should be true" do
    expect(a).to be_integer
  end
end
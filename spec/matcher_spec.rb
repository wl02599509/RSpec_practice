RSpec.describe "same or different" do
  let(:a) { 1234 }
  let(:b) { 1234.0 }

  let(:c) { [1234] }
  let(:f) { [1234.0] }

  it "should be the same" do
    expect(a).to eq(b)
    expect(a).not_to eql(b)

    expect(c).to eq(f)
    # expect(c).to eql(f)
    expect(c).to equal(f)
  end
end
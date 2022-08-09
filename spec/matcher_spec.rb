RSpec.describe "same or different" do
  let(:a) { "1234" }
  let(:b) { "1234" }
  let(:c) { 1234 }
  let(:d) { 1234.0 }
  let(:e) { c }

  it "should be the same" do
    expect(a).to eq(b)
    expect(a).to eql(b)
    expect(a).to equal(b)
    expect(a).to be(b)
    expect(e).to eq(c)
    expect(e).to equal(c)
    expect(d).to eq(c)
    expect(d).to eql(c)
  end
end
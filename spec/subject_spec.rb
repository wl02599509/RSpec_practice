RSpec.describe "subject demo" do
  subject { "RSpec is the best" }

  it "should be 17 elements" do
    expect(subject.length).to eq (17)
  end

  it { is_expected.to eq("RSpec is the best") }
end


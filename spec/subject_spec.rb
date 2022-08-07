RSpec.describe String do
  subject {"ABCDE"}

  it "should be 5 words" do
    expect(subject.length).to eq (5)
  end

  it { is_expected.to eq("ABCDE") }
    
end
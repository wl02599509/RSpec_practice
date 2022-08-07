RSpec.describe String do
  subject {"ABCDE"}

  it "should be 5 words" do
    expect(subject.length).to eq ("AVC")
  end
end
RSpec.describe Array do
  subject {[1, 2, true, "c", "ruby"]}
  it "should have 1" do
    expect(subject.include?(1)).to eq(true)
  end

  subject {["Rails", :apple, 88, 1]}
  it "should have 1" do
    expect(subject.include?(1)).to eq(true)
  end

  subject {["true", false, 1, "c"]}
  it "should have 1" do
    expect(subject.include?(1)).to eq(true)
  end
end
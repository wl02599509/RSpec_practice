RSpec.shared_examples "same_element" do
  it "should have 1" do
    expect(subject.include?(1)).to eq(true)
  end
end

RSpec.describe Array do
  subject {[1, 2, true, "c", "ruby"]}
  include_examples "same_element"

  subject {["Rails", :apple, 88, 1]}
  include_examples "same_element"

  subject {["true", false, 1, "c"]}
  include_examples "same_element"
end
class Comebuy
  attr_accessor :containers, :liquid

  def initialize(container, liquid)
    @containers = container
    @liquid = liquid
  end
end


RSpec.shared_context "Comebuy" do
  let(:bubble_black_tea) { Comebuy.new("bubble", "black_tea") }

  subject { Comebuy.new("bubble", "milk_tea") }

  before do
    @bubble_green_tea = Comebuy.new("bubble", "green_tea")
  end
end

RSpec.describe "Quality Examination for bubble_blacktea" do
  include_context "Comebuy"
  it "is black tea" do
    expect(bubble_black_tea.liquid).to eq("black_tea")
  end
end

RSpec.describe "Quality Examination for bubble_milk_tea" do
  include_context "Comebuy"
  it "is milk tea" do
    expect(subject.liquid).to eq("milk_tea")
  end
end

RSpec.describe "Quality Examination for bubble_green_tea" do
  include_context "Comebuy"
  it "is green tea" do
    expect(@bubble_green_tea.liquid).to eq("green_tea")
  end
end
class Comebuy
  attr_accessor :containers, :liquid

  def initialize(container, liquid)
    @containers = container
    @liquid = liquid
  end
end


RSpec.shared_context "Comebuy" do
  let(:bubble_blacktea) { Comebuy.new("bubble", "blacktea") }

  subject { Comebuy.new("bubble", "milktea") }

  before do
    @abcde = Comebuy.new("bubble", "greentea")
  end
end

RSpec.describe "Quality Examination" do
  include_context "Comebuy"
  it "all has bubble" do
    expect(bubble_blacktea.containers).to eq("bubble")
  end
end
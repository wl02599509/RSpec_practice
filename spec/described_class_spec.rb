class BubbleTea
  attr_accessor :has_content, :has_drink
  def initialize(content, drink)
    @has_drink = drink
    @has_content = content
  end
end

RSpec.describe BubbleTea do
  let (:bubbletea) { described_class.new('bubble', 'miletea') }
  it "should be bubble" do
    expect(bubbletea.has_content).to eq('bubble')
  end
end
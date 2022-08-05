class BubbleTea
  attr_accessor :has_content, :has_drink
  def initialize(content, drink)
    @has_drink = drink
    @has_content = content
  end

end

RSpec.describe BubbleTea do
  before do
    @bubble_tea = BubbleTea.new('bubble', 'milktea')
  end
  it 'has drink' do
    expect(@bubble_tea.has_drink).to eq('milktea')
  end

  it 'has content' do
    expect(@bubble_tea.has_content).to eq('bubble')
  end
end


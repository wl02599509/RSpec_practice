class BubbleTea
  attr_accessor :has_content, :has_drink
  def initialize(content, drink)
    @has_drink = drink
    @has_content = content
  end

end

RSpec.describe BubbleTea do
  
  let(:bubble_tea) { BubbleTea.new('bubble', 'milktea') }

  it 'has milkdrink and blacktea' do
    expect(bubble_tea.has_drink).to eq('milktea')
    bubble_tea.has_drink = 'blacktea'
    expect(bubble_tea.has_drink).to eq('blacktea')
  end

  it 'has content' do
    expect(bubble_tea.has_content).to eq('bubble')
  end
end


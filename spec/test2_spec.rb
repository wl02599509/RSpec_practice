class Member 
  attr_accessor :rank
  def initialize(rank)
    @rank = rank
  end

  def bonus
    if @rank === 'silver'
      0.9
    elsif @rank === 'golden'
      0.8
    end
  end
end

RSpec.describe ".bonus method" do
  let(:member) { Member.new('normal') }

  describe "when member is silver rank" do
    it 'should feedback 10% discount.' do
      member.rank = 'silver'
      expect(member.bonus).to eq(0.9)
    end
  end

  describe "when member is golden rank" do
    it 'should feedback 20% discount.' do
      member.rank = 'golden'
      expect(member.bonus).to eq(0.8)
    end
  end
end


class User 
  attr_accessor :age
  def initialize(name, age)
    @name = name
    @age = age
  end
end

RSpec.shared_examples "滿18歲" do
  it "使用者年紀大於等於 18" do
    expect(user.age).to be >= 18
  end
end

RSpec.describe Array do
  let(:user) { User.new('Mike', 20) }
  include_examples "滿18歲"

  let(:user) { User.new('Elly', 18) }
  include_examples "滿18歲"

  let(:user) { User.new('Yummy', 19) }
  include_examples "滿18歲"
end
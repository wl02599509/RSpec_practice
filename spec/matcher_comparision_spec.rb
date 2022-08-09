RSpec.describe "Array" do
  subject { [1, 2, 3, 4, 5, 6, 7].length }

  it {is_expected.to be <= 7 }
  it {is_expected.to be >= 7 }
  it {is_expected.to be < 100 }
  it {is_expected.to be > 3 }
  it {is_expected.not_to be < 7 }
end


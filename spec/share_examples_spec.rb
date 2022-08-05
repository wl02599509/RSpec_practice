RSpec.shared_examples 'The total is 5.' do
  it 'should be 5 of size' do
    expect(subject.length).to eq(5)
  end
end

RSpec.describe Array do
  subject {[1, 2, 3, 4, 5]}

  include_examples 'The total is 5.'
end

RSpec.describe Hash do
  subject {{a: 1, b: 2, c: 3, d: 4, e: 5}}

  include_examples 'The total is 5.'
end

RSpec.describe String do
  subject {"abcde"}

  include_examples 'The total is 5.'
end


require('rspec')
require('app')

describe('Number#get_number')  do
  it('initializes Number class') do
    test = Words.new(1)
    expect(test.number).to(eq(1))
  end
end

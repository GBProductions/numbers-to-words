require('rspec')
require('app')

describe('Words#get_number')  do
  it('initializes Words class') do
    test = Words.new(1)
    expect(test.number).to(eq(1))
  end
  it ('initialize singledigit definitions') do
    test = Words.new('')
    expect(test.singledigit).to(eq({1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}))
  end
  it ('replace numberical value with equivalent word') do
    test = Words.new(1)
    expect(test.get_number).to(eq("one"))
  end
end

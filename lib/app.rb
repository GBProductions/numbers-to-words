#!/usr/bin/env ruby

# {hundred, thousand, million, billion, trillion}
# {one, two, three, ..., nineteen}
# {twenty, thirty, forty, ..., ninety}

class Words
  def initialize(number)
    @number = number
    @singledigit = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
  end

  def number
    @number
  end

  def singledigit
    @singledigit
  end
end
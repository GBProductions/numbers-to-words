#!/usr/bin/env ruby

# {hundred, thousand, million, billion, trillion}
# {one, two, three, ..., nineteen}
# {twenty, thirty, forty, ..., ninety}

class Words
  def initialize(number)
    @number = number
    @singledigit = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
    @teens = {10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    @doubledigit = {2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
    @tripledigit = {1 => "one hundred"}
  end

  def number
    @number
  end

  def singledigit
    @singledigit
  end

  def get_number
    output = []
    number_array = @number.to_s.split('')
    digits = number_array.length()
    current_digit = digits
    number_array.each do |character|
      if current_digit === 1
        output.push(@singledigit.fetch(character.to_i))
      elsif digits === 2
        if @number.to_i % 10 === 0
          output.push(@doubledigit.fetch(@number.to_i))
          break
        elsif (@number.to_i >= 10) & (@number.to_i < 20)
          output.push(@teens.fetch(@number.to_i))
          current_digit -= 1
          break
        elsif current_digit === 2
          output.push(@doubledigit.fetch(character.to_i))
      elsif digits === 3
        if @number.to_i % 10 === 0
            output.push(@tripledigit.fetch(@number.to_i))
            break
        elsif current_digit === 3
            output.push(@tripledigit.fetch(character.to_i))
        end
      current_digit -= 1
      end
    end
    end
  output.join(' ')
  end
end


puts 'Enter a number:'
user_input = gets.chomp
puts Words.new(user_input).get_number
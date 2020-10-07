# frozen_string_literal: true

## write your fizzbuzz method in this file
# see http://en.wikipedia.org/wiki/Fizz_buzz for details on FizzBuzz game
def fizzbuzz(num, &block)
  x = []
  (1..num).each do |value|
    if (value % 15).zero? then x.push('FizzBuzz')
    elsif (value % 3).zero? then x.push('Fizz')
    elsif (value % 5).zero? then x.push('Buzz')
    else x.push(value.to_s)
    end
  end
  block_given? ? x.map(&block) : x
end

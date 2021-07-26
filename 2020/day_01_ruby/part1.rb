# frozen_string_literal: true

numbers = (File.readlines('input.txt')).map(&:to_i)

result = numbers
         .select do |number|
  numbers.include?(2020 - number)
end.reduce(:*)

puts result

# frozen_string_literal: true

numbers = (File.readlines('input.txt')).map(&:to_i)

result = []

numbers.select do |number|
  result << number if numbers.select do |second_number|
                        numbers.include?(2020 - number - second_number)
                      end.length > 1
end

puts result.reduce(:*)

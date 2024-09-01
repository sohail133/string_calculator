class StringCalculator < ApplicationRecord
  def self.add(input)
    return 0 if input.empty?

    delimiter = ",|\n"
    if input.start_with?("//")
      delimiter = Regexp.escape(input[2])
      input = input[4..]
    end
    numbers = input.split(/#{delimiter}/).map(&:to_i)
    negatives = numbers.select { |n| n < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
    
    return numbers.sum
  end
end

class StringCalculator < ApplicationRecord
  def self.add(input)
    return 0 if input.empty?

    delimiter = ",|\n"
    if input.start_with?("//")
      delimiter = Regexp.escape(input[2])
      input = input[4..]
    end
    numbers = input.split(/#{delimiter}/).map(&:to_i)
    
    return numbers.sum
  end
end

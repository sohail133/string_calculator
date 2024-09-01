class StringCalculator < ApplicationRecord
  def self.add(input)
    return 0 if input.empty?
    numbers = input.split(/,|\n/).map(&:to_i)
    return numbers.sum
  end
end

require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number itself for a single number string' do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers separated by a comma' do
      expect(StringCalculator.add("1,2")).to eq(3)
    end

    it 'returns the sum of any amount of numbers separated by commas' do
      expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
    end

    it 'handles new lines as delimiters along with commas' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiters' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end
  end
end
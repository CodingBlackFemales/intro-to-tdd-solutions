require 'fizzbuzz'

RSpec.describe 'fizzbuzz' do
  context 'returns the number:' do
    numbers = [1, 2, 4, 7, 8, 11, 13, 14]

    numbers.each do |number|
      it "returns #{number} when the input is #{number}" do
        expect(fizzbuzz(number)).to eq(number)
      end
    end
  end

  context 'multiples of 3:' do
    multiples_of_3 = [3, 6, 9, 12]

    multiples_of_3.each do |number|
      it "returns `Fizz` when the input is #{number}" do
        expect(fizzbuzz(number)).to eq("Fizz")
      end
    end
  end
end

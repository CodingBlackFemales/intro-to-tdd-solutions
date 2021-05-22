require 'fizzbuzz'

RSpec.describe 'fizzbuzz' do
  it 'returns `Fizz` for multiples of 3' do
    expect(fizzbuzz(6)).to eq('Fizz')
  end

  it 'returns `Buzz` for multiples of 5' do
    expect(fizzbuzz(10)).to eq('Buzz')
  end

  it 'returns `FizzBuzz` for multiples of both 3 and 5' do
    expect(fizzbuzz(15)).to eq('FizzBuzz')
  end

  it 'returns the number when it is not a multiple of 3 and/or 5' do
    expect(fizzbuzz(7)).to eq(7)
  end

# Examples of how to test all of the numbers using loops

  context 'multiples of 3 only' do
    # create an array of numbers to be tested
    multiples_of_3_only = [3, 6, 9, 12]

    # loop through the array, accessing the selected number
    multiples_of_3_only.each do |number|
      # replace the hardcoded number with the `number` variable
      it "returns `Fizz` when the number is #{number}" do
        expect(fizzbuzz(number)).to eq('Fizz')
      end
    end
  end

  context 'multiples of 5 only' do
    multiples_of_5_only = [5, 10]

    multiples_of_5_only.each do |number|
      it "returns `Buzz` when the number is #{number}" do
        expect(fizzbuzz(number)).to eq('Buzz')
      end
    end
  end

  context 'multiples of 3 and 5' do
    multiples_of_3_and_5 = [15]

    multiples_of_3_and_5.each do |number|
      it "returns `FizzBuzz` when the number is #{number}" do
        expect(fizzbuzz(number)).to eq('FizzBuzz')
      end
    end
  end

  context 'not multiples of 3 and/or 5' do
    not_multiples = [1, 2, 4, 7, 8, 11, 13, 14]

    not_multiples.each do |number|
      it "returns #{number}" do
        expect(fizzbuzz(number)).to eq(number)
      end
    end
  end
end

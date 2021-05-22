require 'fizzbuzz'

RSpec.describe 'fizzbuzz' do
  it 'returns `Fizz` for multiples of 3' do
    expect(fizzbuzz(6)).to eq('Fizz')
  end

  it 'returns `Buzz for multiples of 5' do
    expect(fizzbuzz(10)).to eq('Buzz')
  end

  it 'returns `FizzBuzz` for multiples of both 3 and 5' do
    expect(fizzbuzz(15)).to eq('FizzBuzz')
  end

  it 'returns the number when it is not a multiple of 3 and/or 5' do
    expect(fizzbuzz(7)).to eq(7)
  end
end

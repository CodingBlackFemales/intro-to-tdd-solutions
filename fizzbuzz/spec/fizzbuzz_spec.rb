require 'fizzbuzz'

RSpec.describe 'fizzbuzz' do
  it 'returns `Fizz` when passed a multiple of three' do
    expect(fizzbuzz(6)).to eq("Fizz")
  end

  it 'returns `Buzz` when passed a multiple of five' do
    expect(fizzbuzz(10)).to eq("Buzz")
  end

  it 'returns `FizzBuzz` when passed a multiple of three and five' do
    expect(fizzbuzz(15)).to eq("FizzBuzz")
  end

  it 'returns the input when it is not a multiple of three or five' do
    expect(fizzbuzz(7)).to eq(7)
  end
end

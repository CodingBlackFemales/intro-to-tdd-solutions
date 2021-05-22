require 'fizzbuzz'

RSpec.describe 'fizzbuzz' do
  it 'returns `Fizz` for multiples of 3' do
    expect(fizzbuzz(6)).to eq('Fizz')
  end
end

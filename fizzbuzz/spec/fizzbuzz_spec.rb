require 'fizzbuzz'

RSpec.describe 'fizzbuzz' do
  it 'returns 1 when the input is 1' do
    expect(fizzbuzz(1)).to eq(1)
  end

  it 'returns 2 when the input is 2' do
    expect(fizzbuzz(2)).to eq(2)
  end
end

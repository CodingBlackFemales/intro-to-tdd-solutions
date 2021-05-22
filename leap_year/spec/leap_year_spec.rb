require 'leap_year'

RSpec.describe 'leap_year' do
  it "returns true when the year is divisible by 400" do
    expect(leap_year(2000)).to eq(true)
  end
end

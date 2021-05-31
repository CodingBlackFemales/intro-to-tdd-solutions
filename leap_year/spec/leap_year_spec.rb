require 'leap_year'

RSpec.describe 'leap_year' do
  context 'divisible by 400:' do
    it "returns true when the year is 2000" do
      expect(leap_year(2000)).to eq(true)
    end
  end

  context 'divisible by 100, but not 400:' do
    it "returns false when the year is 1700" do
      expect(leap_year(1700)).to eq(false)
    end
  end
end

require 'leap_year'

RSpec.describe 'leap_year' do
  context 'divisible by 400:' do
    it "returns true when the year is 2000" do
      expect(leap_year(2000)).to eq(true)
    end
  end

  context 'divisible by 100, but not 400:' do
    divisible_by_100 = [1700, 1800, 1900]

    divisible_by_100.each do |number|
      it "returns false when the year is #{number}" do
        expect(leap_year(number)).to eq(false)
      end
    end
  end

  context 'divisible by 4, but not 100:' do
    divisible_by_4 = [2004, 2008, 2012, 2016, 2020]

    divisible_by_4.each do |number|
      it "returns true when the year is #{number}" do
        expect(leap_year(number)).to eq(true)
      end
    end
  end
end

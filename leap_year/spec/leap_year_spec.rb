require 'leap_year'

RSpec.describe 'leap_year' do
  context 'divisible by 400:' do
    it "returns true when the year is 2000" do
      expect(leap_year(2000)).to be true
    end
  end

  context 'divisible by 100, but not 400:' do
    divisible_by_100 = [1700, 1800, 1900]

    divisible_by_100.each do |number|
      it "returns false when the year is #{number}" do
        expect(leap_year(number)).to be false
      end
    end
  end

  context 'divisible by 4, but not 100:' do
    divisible_by_4 = [2004, 2008, 2012, 2016, 2020]

    divisible_by_4.each do |number|
      it "returns true when the year is #{number}" do
        expect(leap_year(number)).to be true
      end
    end
  end

  context 'not divisible by 400, 100 or 4:' do
    not_divisible = [
      2001,
      2002,
      2003,
      2005,
      2006,
      2007,
      2009,
      2010,
      2011,
      2013,
      2014,
      2015,
      2017,
      2018,
      2019
    ]

    not_divisible.each do |number|
      it "returns false when the year is #{number}" do
        expect(leap_year(number)).to be false
      end
    end
end

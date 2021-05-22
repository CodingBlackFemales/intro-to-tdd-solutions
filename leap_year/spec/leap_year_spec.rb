require 'leap_year'

RSpec.describe 'leap_year' do
  it "returns true when the year is divisible by 400" do
    expect(leap_year(2000)).to eq(true)
  end

  it 'returns false when the year is divisible by 100, but not 400' do
    expect(leap_year(1700)).to eq(false)
  end

  it 'returns true when the year is divisible by 4, but not 100' do
    expect(leap_year(2008)).to eq(true)
  end

  it 'returns false when the year is not divisible by 4' do
    expect(leap_year(2017)).to eq(false)
  end

  # Examples of how to test numerous years using loops

  context 'divisible by 400' do
    divisible_by_400 = [1600, 2000]

    divisible_by_400.each do |year|
      it "returns true for #{year}" do
        expect(leap_year(year)).to eq(true)
      end
    end
  end

  context 'divisible by 100, but not 400' do
    divisible_by_100 = [1700, 1800, 1900]

    divisible_by_100.each do |year|
      it "returns false for #{year}" do
        expect(leap_year(year)).to eq(false)
      end
    end
  end

  context 'divisible by 4, but not 100' do
    divisible_by_4 = [2008, 2012, 2016]
    not_divisible_by_4 = [2017, 2018, 2019]

    divisible_by_4.each do |year|
      it "returns true for #{year}" do
        expect(leap_year(year)).to eq(true)
      end
    end

    not_divisible_by_4.each do |year|
      it "returns false for #{year}" do
        expect(leap_year(year)).to eq(false)
      end
    end
  end
end

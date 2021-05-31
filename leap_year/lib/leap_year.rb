def leap_year(year)
  is_divisible_by_400?(year) ||
  year % 100 != 0 &&
  is_divisible_by_4?(year)
end

def is_divisible_by_400?(year)
  year % 400 == 0
end

def is_divisible_by_4?(year)
  year % 4 == 0
end

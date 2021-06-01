def leap_year(year)
  is_divisible_by_400?(year) ||
  is_divisible_by_4?(year) &&
  !is_divisible_by_100?(year)
end

def is_divisible_by_400?(year)
  year % 400 == 0
end

def is_divisible_by_4?(year)
  year % 4 == 0
end

def is_divisible_by_100?(year)
  year % 100 == 0

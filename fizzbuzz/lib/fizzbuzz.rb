def fizzbuzz(number)
  if is_multiple_of_3_and_5?(number)
    return "FizzBuzz"
  elsif is_multiple_of_3?(number)
    return "Fizz"
  elsif is_multiple_of_5?(number)
    return "Buzz"
  end

  number
end

def is_multiple_of_3?(number)
  number % 3 == 0
end

def is_multiple_of_5?(number)
  number % 5 == 0
end

def is_multiple_of_3_and_5?(number)
  is_multiple_of_3?(number) && is_multiple_of_5?(number)
end

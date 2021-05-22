def fizzbuzz(number)
  if is_multiple_of_3?(number) && number % 5 == 0
    return "FizzBuzz"
  elsif is_multiple_of_3?(number)
    return "Fizz"
  elsif number % 5 == 0
    return "Buzz"
  end

  number
end

def is_multiple_of_3?(number)
  number % 3 == 0
end

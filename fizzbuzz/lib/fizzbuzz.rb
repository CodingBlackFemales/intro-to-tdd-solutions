def fizzbuzz(num)
  if is_multiple_of_three_and_five?(num)
    return "FizzBuzz"
  elsif is_multiple_of_three?(num)
    return "Fizz"
  elsif is_multiple_of_five?(num)
    return "Buzz"
  end

  return num
end

def is_multiple_of_three?(num)
  num % 3 == 0
end

def is_multiple_of_five?(num)
  num % 5 == 0
end

def is_multiple_of_three_and_five?(num)
  is_multiple_of_three?(num) && is_multiple_of_five?(num)
end

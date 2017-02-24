# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

def is_prime?(number)
  (2...number).each do |divisor|
    return false if number % divisor == 0
  end
  true
end

result = is_prime?(13)
puts result

result = is_prime?(200)
puts result


# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

def highest_prime_number_under(number)
  array = []
 
  (2...number).each do |num|
    array << num if is_prime?(num)
  end
  p array[-1]
end


result = highest_prime_number_under(10)
puts result

result = highest_prime_number_under(100)
puts result
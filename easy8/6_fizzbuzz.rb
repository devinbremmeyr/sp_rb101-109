# take two arguments a starting number and an ending number
# print out all the numbers between the two numbers
# => except if divisible by 3 print "Fizz"
# => if divisible by 5 print "Buzz"
# => if divisible by both print "FizzBuzz"

def fizzbuzz(start_num, end_num)
  str_out = ''
  start_num.upto(end_num) do |num|
    str_out += fizz_or_buzz(num)
    str_out += num == end_num ? "\n" : ', ' 
  end
  print str_out
end

def fizz_or_buzz(num)
  if num % 3 == 0 && num % 5 == 0
    'FizzBuzz'
  elsif num % 3 == 0
    'Fizz'
  elsif num % 5 == 0
    'Buzz'
  else
    num.to_s
  end
end


fizzbuzz(1, 15)

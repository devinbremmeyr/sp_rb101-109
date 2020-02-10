# take a positive integer or zero and convert it to a string

# loop through digits add each one to string
# while int > 0
# string << int % 10
# int /= 10
# return string
def integer_to_string(int)
  return '0' if int == 0
  str_out = ''
  while int > 0
    digit = int % 10
    str_out = '0123456789'[digit] + str_out
    int /= 10
  end
  str_out
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
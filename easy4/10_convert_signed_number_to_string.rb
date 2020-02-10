# using the previous integer to string method
# add the ability to accept a negitive number

# check if int is negitive
# modify return value accordingly
def integer_to_string(int)
  return '0' if int == 0
  str_out = ''
  if int > 0
    sign ='+'
  else
    sign = '-'
    int *= -1
  end
  while int > 0
    digit = int % 10
    str_out = '0123456789'[digit] + str_out
    int /= 10
  end
  str_out.prepend(sign)
end

puts integer_to_string(4321) == '+4321'
puts integer_to_string(0) == '0'
puts integer_to_string(-123) == '-123'
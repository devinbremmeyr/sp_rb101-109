# take a number
# if the number is positive return that number as negative
# => if the number is zero or negative return the same number

def negative(num)
  num.abs * -1
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby

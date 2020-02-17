# take an array of integers
# multiply all the numbers together divide the result by the number of elements
# print the result rounded to 3 decimal places
# assume the array is non-empty

def show_multiplicative_average(numbers)
  total = numbers.reduce(:*).to_f
  result = (total / numbers.length)  
  puts format('The result is %.3f', result)
end

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667

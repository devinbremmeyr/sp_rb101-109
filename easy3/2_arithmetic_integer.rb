# 2_arithmetic_integer.rb

# Prompt the user for two positive integers
numbers = []
puts "==> Enter the first number:"
numbers << gets.chomp.to_i
puts "==> Enter the second number:"
numbers << gets.chomp.to_i

# Print the results of the following operations on those two numbers
# + - * / % **
%i(+ - * / % **).each do |operator|
  result = numbers.reduce(operator)
  puts "==> #{numbers[0]} #{operator} #{numbers[1]} = #{result}"
end

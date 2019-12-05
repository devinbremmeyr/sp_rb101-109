# 8_sum_or_product.rb


number = nil
s_or_p = nil

# ask the user for an integer greater than 0
until number
  puts ">> Please enter an integer greater than 0:"
  number = gets.to_i
  if number <= 0
    number = nil
    puts ">> Invalid input try again"
  end
end
# then ask if the user wants to determine the sum or product of
# all numbers between 1 and the entered integer
until s_or_p
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  s_or_p = gets.chomp
  unless s_or_p == 's' || s_or_p == 'p'
    s_or_p = nil
    puts ">> Invalid input try again"
  end
end
# display either the sum or the product
sp_symbol = { 's' => :+, 'p' => :* }
result = (1..number).reduce(sp_symbol[s_or_p])

sp_word = { 's' => 'sum', 'p' => 'product' }
puts "The #{sp_word[s_or_p]} of the integers between 1 and #{number} is #{result}."

# Examples
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.

# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to copute the product.
# p
# The product of the integers between 1 and 6 is 720.
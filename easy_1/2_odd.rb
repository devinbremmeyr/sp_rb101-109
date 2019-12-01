# 2_odd.rb


# define a method that takes one integer argument (-, +, or 0)
# return true if the absolute value is odd



def is_odd?(num)
  num.abs.remainder(2) == 1
end

# Examples

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)
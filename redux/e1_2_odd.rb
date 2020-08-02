# take one integer argument
# => it may be positive negative or zero
# return true if the number's absolute value is odd

# you may assume valid input

=begin 
Data structure: boolean
Algorithm: 
use mod(2) on input integer
test the result is not 0 
=end

def is_odd?(num)
  num % 2 != 0
end



# Examples
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

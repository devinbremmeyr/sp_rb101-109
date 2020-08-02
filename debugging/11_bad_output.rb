require 'pry'

arr = ["9", "8", "7", "10", "11"]
p (arr.sort do |x, y|
    y.to_i <=> x.to_i
  end)
# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

# This one is ticky to debug. The problem has to do with operator presidence
# between {...} and do ... end. If {...} is uesd for the block passed to sort,
# the ouput will be as expected.

# What is happening here is two method calls (p sort) followed by a block.
# From the ruby docs on calling methods under "Block Argument":

=begin
do end has lower precedence than { } so:

method_1 method_2 {
  # ...
}

Sends the block to method_2 while:

method_1 method_2 do
  # ...
end

Sends the block to method_1. Note that in the first case if parentheses are used
 the block is sent to method_1.
=end

# So to our dismay the do...end block was not being passed to sort, but instead
# to p. Therefore the block is never executed. If we put a binding pry in 
# the block it pry won't open at runtime. This is also why the output is bad.
# Array#sort sorts the array comparing the elements as strings by default.

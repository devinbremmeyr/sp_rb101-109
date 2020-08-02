# take two arguments, a string, and a positive integer

# print the string as many times as the interger indicates

# Data structure: array
# ALgorithm:
=begin
initialize array of num copies of message
call use puts on our array  
=end
def repeat(message, num)
  repeat_arr = Array.new(3) { message }
  puts repeat_arr
end


# Example
repeat('Hello', 3)

# take a positive integer
# return a list of digits in the number

=begin
  Input: an integer
  Output: an array of digits
  ## RULES
  Explicit: create an array containing each digit of input integer
  Implicit: 
  Clarifying questions:
  
  Data Structure: string, and an array
  ALgorithm:
  convert integer to string
  split string into array of characters
  convert array of characters to array of integers
  return the digits array
=end

def digit_list(num)
  num.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

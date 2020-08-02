# Write a method that returns true if the string passed as an argument is a 
# palindrome, false otherwise. A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

# Input: string
# output: boolean true or false
# Explicit: retrun true if a string is the same forwards as backwards
# case maters as does puncuation and spaces.

# algorithm:
=begin
make a reversed copy of the input string
  make an array with length equal to input string
  then pass each character into the array
then check it against the input string using ==
return the value of the comparison  
=end
  
def palindrome?(str)
  reverse_array = Array.new(str.size)
  str.size.reverse_array[]
  reverse_str = str.chars.map { |char| }.join

end

# Examples:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

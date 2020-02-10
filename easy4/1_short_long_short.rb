# Write a method that takes two strings as arguments, determines the longest of
# the two strings, and then returns the restult of concatenating the shorter 
# string, the longer string, and the shorter string once again.
# You may assume that the strings are of different lengths.

def short_long_short(str1, str2)
  if str1.size < str2.size
    short = str1
    long = str2
  else
    long = str1
    short = str2
  end
  short + long + short
end

# Examples
puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == 'xyz'

# Input: two strings
# Output: a new string from concatenating the input strings

# Rules:
#   Explicit:
#   - sandwich longer of two input stings between two copies of shorter
#   - can assume that strings are different lengths
#   Implicit:
#   -

# Algorithm:
#   - set str1 and str2 equal to short and long
#   - return concatinated short + long + short

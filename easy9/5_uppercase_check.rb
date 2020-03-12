# take a string argument
# return true if all of the alphabetic characer inside the string are uppercase
# return false otherwise
# characters taht are not alphabetic should be ignored

def uppercase?(str)
  !str.match?(/[a-z]/)
end

# Examples:

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true

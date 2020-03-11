# write a method that returns a list of all substrings of a string
# that start at the beginning of the original string

# The return value should be arragned in order from shortest to longest substring

def substrings_at_start(str)
  # break string into characters
  # assemble array of substrings by iterating through chars
  running_substring = ''
  str.chars.map { |char| running_substring += char }
end

# Examples: 
p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

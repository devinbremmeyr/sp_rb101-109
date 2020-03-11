# take a string
# return a list of substrings of a string
# => list should be ordered by where in the string the substring begins
# => since multiple substrings begin at each index order these from shortest to longest

def substrings(str)
  # generate all substrings for an index
  # advance to next str index
  arr_out = []
  chars = str.chars
  0.upto(chars.size) do |i|
    running_substring = ''
    arr_out << chars[i..-1].map { |char| running_substring += char }
  end
  arr_out.flatten
end

# Examples: 

p substrings('a')
p substrings('dog')
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

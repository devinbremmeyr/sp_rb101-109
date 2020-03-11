# take a string
# return an array of all substrings of input string that are palindromic
# => the return array should be ordered in the order the substrings occur in the input string
# => duplicated palindromes SHOULD be included multiple times.

# Use the substrings method from the previous exercise
def substrings(str)
  arr_out = []
  chars = str.chars
  0.upto(chars.size) do |i|
    running_substring = ''
    arr_out << chars[i..-1].map { |char| running_substring += char }
  end
  arr_out.flatten
end

# Consider all characters and pay attention to case
# => "AbcbA" is a plaindrome, but neither "Abcba" nor "Abc-bA" are
# => assume that single characters are not palindromes

def palindromes(str)
  all_substrings = substrings(str)
  all_substrings.select { |sub_str| sub_str.size > 1 && sub_str.reverse == sub_str }
end

# Examples:   
p palindromes('abcd') #== []
p palindromes('madam') #== ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

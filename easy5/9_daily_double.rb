# take a string argument
# return a new string containing the value of the original string
# with all consecutive duplicate characters collapsed into a single character

def crunch(str_in)
  str_out = ''  
  str_in.each_char do |char|
    str_out << char unless char == str_out[-1]
  end
  str_out
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
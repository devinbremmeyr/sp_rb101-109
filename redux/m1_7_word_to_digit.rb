=begin 
PROBLEM NOTES:
take a string as input 
return the same string with any sequence of the words:
'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
converted to a string of digits
=end

=begin
  Input: string
  Output: string 
  ##__RULES__##
  Explicit: convert multiple number words in a row to digital equivalent
  Implicit: leave spaces between digits
  Clarifying questions: should single number words be ignored?
  
  Data Structure: hash, array
  Algorithm:
  use a hash to relate words ('zero') to digits ('0')
  split input string into array of words seperated by sapces
  parse through array replacing 'number' words with there digit equivalent
  join the array back into a string
  return the string 
=end
NUMBERS = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 
            'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
            'eight' => '8', 'nine'=> '9' }
NUM_PATTERN = /(one|two|three|four|five|six|seven|eight|nine|zero)/i
def word_to_digit(str)
  str.gsub(NUM_PATTERN, NUMBERS)
end

# Example
puts word_to_digit('Please call me at five five five bone two three four. Thanks.') \
#== 'Please call me at 5 5 5 1 2 3 4. Thanks.'

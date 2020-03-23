# write a method that takes a sentence as input
# return the same string with any sequence of the words:
# => 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
# =>  converted to a string of digits
NUMBERS = %w(zero one two three four five six seven eight nine)

def word_to_digit(words)
  NUMBERS.each_with_index do |number, num_index|
    words.gsub!(/\b#{number}\b/i, num_index.to_s)
  end
  words.gsub!(/(\d)\s(?=\d)/) { $1 }
  words.gsub!(/(\d{3})?(\d{3})(\d{4})/) do
    if $1
      "(" + $1 + ") " + $2 + "-" + $3
    else
      $2 + "-" + $3
    end
  end
end

# Examples:
sentence = \
'1 Please call me at three six one five FIVE fivE four three two one. Bone! sixby'
# sentence = '3615554321'
word_to_digit(sentence) #==
# 'Please call me at 5 5 5 1 2 3 4. Thanks.'
p sentence

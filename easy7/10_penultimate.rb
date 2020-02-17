# return the next to last word in the string passed in as an argument

def penultimate(str)
  str.split[-2]
end

#puts penultimate('last word') == 'last'
#puts penultimate('Launch School is great!') == 'is'

# Further exploration
# write a method that returns the middle word from a string
# Edge cases
# empty string
# => return empty string
# single word string
# => return single word
# even number of words
# => return both middle words

def middle_word(str)
  words = str.split
  middle_index = (words.length / 2.0).floor

  if words.length.odd?
    words[middle_index]
  elsif str.length == 0
    ''
  else
    middle_index -= 1
    words[middle_index, 2].join(' ')
  end
end

puts middle_word('') == ''
puts middle_word('dog') == 'dog'
puts middle_word('my dog went to the store') == 'went to'
puts middle_word('i like pizza') == 'like'

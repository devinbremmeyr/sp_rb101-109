# given a string of words seperated by spaces
# return a string in which the first and last letters of every word are swapped

def swap(words)
  words_arr = words.split(' ')
  words_arr.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  words_arr.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
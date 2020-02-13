# take a string with one or more space seperated words
# return a hash that shows the number of words of different sizes

def word_sizes(words)
  words_arr = words.split(' ')
  words_arr.each_with_object(Hash.new(0)) do |word, hsh|
    hsh[word.size] += 1
  end
end

puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
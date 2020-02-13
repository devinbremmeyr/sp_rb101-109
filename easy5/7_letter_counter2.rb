# modify the word_sizes method to exclude non-letters
# for instance "it's" should be length 3 not 4

def word_sizes(words_string)
  count = Hash.new(0)
  words_arr = words_string.gsub(/[^a-z ]/i, '').split(' ')
  words_arr.each do |word|    
    count[word.size] += 1
  end
  count
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
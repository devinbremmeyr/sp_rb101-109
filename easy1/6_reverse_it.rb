# 6_reverse_it.rb

def reverse_words(words)
  output = words.split(' ')
  output.map! { |word| word.length >= 5 ? word.reverse : word }
  output.join(' ')
end

# Examples
puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
puts reverse_words('')

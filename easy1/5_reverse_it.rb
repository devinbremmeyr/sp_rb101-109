# 5_reverse_it.rb

def reverse_sentence(sentence)
  words = sentence.split(' ').reverse
  output = ''
  words.each do |word|
    output += word + ' '
  end
  output[0...-1]
end

# Examples
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

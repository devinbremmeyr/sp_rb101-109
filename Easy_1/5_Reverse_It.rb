# 5_Reverse_It.rb

def reverse_sentence(sentence)
  words = sentence.split(' ').reverse
  output = ''
  words.each_with_index{ |word, i|
    output += word + ' '
  }
  output[0...-1]
end


# Examples
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


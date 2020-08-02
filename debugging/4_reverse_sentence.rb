

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    # reversed_words = words[i] + reversed_words
    reversed_words.unshift(words[i])
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

# Running this code yields the following error:
# line:9:in `+': no implicit conversion of Array into String (TypeError)

# words[i] represents one string from the array words per loop iteration
# line 9 technically calls String#+ method with the array reversed_words
# given as an argument. String#+ expects a string as an argument thus the error.

# Instead I use Array#unshift on line 10 to add each word to front of the 
# reversed array.

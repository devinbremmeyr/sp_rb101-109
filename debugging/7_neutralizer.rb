def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

def neutralize2(sentence)
  words = sentence.split(' ')
  words.reject { |word| negative?(word) }.join(' ')
end

puts neutralize2('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# the bug in this program is the neutralize method modifies the words array as
# it iterates over it. This causses the iteration to skip over words that follow
# deleted words in the array.

# read the content of a text file
# then print the longest sentece in the file based on number of words
# Also print the number of words in the longest sentece
# => sentences may end in '.', '!', or '?'
# => any sequence of characters that are not spaces or puncuation are words

TEXT = File.read('frankenstein.txt')

def longest_sentence(text)
  text_arr = text.split
  longest_count = 0
  current_sentence_start = 0
  longest_sentence_start = 0

  text_arr.each_with_index do |word, word_i|
    next unless %w(. ! ?).include?(word[-1])
    sentence_word_count = word_i - current_sentence_start + 1
    if sentence_word_count > longest_count
      longest_count = sentence_word_count
      longest_sentence_start = current_sentence_start
    end
    current_sentence_start = word_i + 1
  end
  [longest_count, text_arr[longest_sentence_start, longest_count].join(' ')]
end

# also print number of words in sentence
word_count, sentence = longest_sentence(TEXT)

puts "=> The longest sentence has #{word_count} words."
puts ''
puts sentence

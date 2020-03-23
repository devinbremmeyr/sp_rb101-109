# Spelling blocks with two letters per block like the following:
# => B:O   X:K   D:Q   C:P   N:A
# => G:T   R:E   F:S   J:W   H:U
# => V:I   L:Y   Z:M

# This limits words that can be spelled with the blocks
# => a word can not use more than one block
# => a word can not used two letters from the same block

# take a word as an argument
# return true if the word can be spelled
# retrun false otherwise

BLOCKS = { 'B' => 'O', 'X' => 'K', 'D' => 'Q', 'C' => 'P', 'N' => 'A',
           'G' => 'T', 'R' => 'E', 'F' => 'S', 'J' => 'W', 'H' => 'U',
           'V' => 'I', 'L' => 'Y', 'Z' => 'M' }.freeze

def block_word?(word)
  word = word.upcase
  # check there are no repeat letters
  return false if word.match?(/([a-z]).*\1/)
  # check there are no letters from the same block
  !word.chars.any? { |char| BLOCKS[char] && word.match?(BLOCKS[char]) }
end

# Examples:
puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true


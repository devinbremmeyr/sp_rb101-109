# given a string that consists of some words and an assortment of non-alphabetic characters
# return that string with all of the non-alphabetic characters replaced by spaces

def cleanup(words)
  words.gsub(/[^a-z]+/i, ' ')
end
puts cleanup("---what's my +*& line?") == ' what s my line '
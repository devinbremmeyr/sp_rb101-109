# take a string
# return a new string in which every consonant character is doubled
# => vowels, digits, punctuation, and whitespace should not be doubled

def double_consonants(str)
  double_arr = str.chars.map do |char|
    consonant?(char) ? char * 2 : char
  end
   double_arr.join
end

def consonant?(char)
  char.match?(/[bcdfghjklmnpqrstvwxyz]/i)
end

# Examples
puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""

# 8_palindrome_strings.rb

# Write a method that returns true if the string passed in is a palindrome.

def palindrome?(input)
  index = 1
  while index < (input.length/2 + 1)
    return false unless input[index-1] == input[-index]
    index += 1
  end
  true
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
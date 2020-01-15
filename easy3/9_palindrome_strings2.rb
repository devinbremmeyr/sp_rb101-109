# 9_palindrome_strings2.rb

# Write a method that returns true if the string passed is a palindrome.
# Ignore case, non-alphanumeric characters.

def real_palindrome?(input)
  index = 1
  string = input.gsub(/\W/, '').downcase
  while index < (string.length/2 + 1)
    return false unless string[index - 1] == string[-index]
    index += 1
  end
  true
end

p real_palindrome?('madam') #== true
p real_palindrome?('Madam') #== true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)
p real_palindrome?('356653') #== true
p real_palindrome?('356a653') #== true
p real_palindrome?('123ab321') #== false
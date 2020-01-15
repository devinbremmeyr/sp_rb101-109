# 3_count_the_characters.rb

# Ask user to input one or more words
print "Please write word or multiple words: "
input = gets.chomp
# Return a count of the number of non-whitespace characters entered.

char_count = 0
input.each_char do |char|
  char_count += 1 unless /\A\s\z/.match?(char)
end
puts "There are #{char_count} characters in \"#{input}\""
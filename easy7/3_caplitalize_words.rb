# take a string
# return a new string like the original with the first letter of every word capitialzed
# => and all other characters lower case

def word_cap(str)
  words = str.split(' ')
  cap_words = words.map do |word|
    word.downcase.capitalize
  end
  cap_words.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

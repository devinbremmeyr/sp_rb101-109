# take an array of strings
# return and array of the same string values, with the vowels removed

def remove_vowels(word_arr)
  # use map to create new array
  word_arr.map do |word|
    word.delete('aeiouAEIOU')
  end
end


puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
# take a non-empty string
# return the middle character or characters of the input string
# => if the input string has an odd length retrun exactly one character
# => if the input string has an even length return exactly two characters

def center_of(str)
  middle = str.length / 2
  if str.length.odd?
    str[middle]
  else
    str[middle-1,2]
  end
end
# Examples:
puts center_of('I love ruby') #== 'e'
puts center_of('Launch School') #== ' '
puts center_of('Launch') #== 'un'
puts center_of('Launchschool') #== 'hs'
puts center_of('x') #== 'x'

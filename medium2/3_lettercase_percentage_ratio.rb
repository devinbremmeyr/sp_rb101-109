# take a string
# return a hash with three keys
# => lowecase letter percentage
# => uppercase letter percentage
# => neither percentage

def letter_percentages(str)
  total = str.size.to_f
  lowercase = (str.count('a-z') / total) * 100
  uppercase = (str.count('A-Z') / total) * 100
  neither = 100 - (lowercase + uppercase)
  { lowercase: lowercase, uppercase: uppercase, neither: neither }
end

p letter_percentages('is BIeeg DOgy HA hhahHaA')

# Examples:
puts letter_percentages('abCdef 123') ==
     { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') ==
     { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') ==
     { lowercase: 0, uppercase: 0, neither: 100 }

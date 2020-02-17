# take a string
# return a hash containing 3 entries
# => lowercase count
# => uppercase count
# => neither count

def letter_case_count(str)
  count = {}
  count[:lowercase] = str.count('a-z')
  count[:uppercase] = str.count('A-Z')
  count[:neither] = str.length - (count[:uppercase] + count[:lowercase])
  count
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
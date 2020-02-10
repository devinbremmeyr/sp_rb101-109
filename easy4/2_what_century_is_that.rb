# write a method that takes a year as an input and returns the century.
# The return value should be a string that ends with st, nd, rd, or th as appropriate.
# New centuries begin in years that end with 01. So the years 1901-2000 return '20th'

# Input: integer year
# Output: string ends in [st, nd, rd, th]

# Rules
# centuries begin with 01 
# 1st 2nd 3rd [4th 5th 6th 7th 8th 9th 10th 11th 12th 13th 14th 15th 16th 17th 18th 19th 20th] 21st

# Algorithm
# Use modular arithmitc to convert year to century
# select the correct suffix
# if century ends in 1 2 or 3 but not 11 12 or 13
# return the string century + suffix

def century(year)
  century_num = ((year - 1)/ 100) + 1
  century_ones = century_num % 10
  century_tens = (century_num % 100) / 10
  if century_ones < 4
    if century_tens == 1
      suffix = 'th'
    else
      case century_ones
      when 1
        suffix = 'st'
      when 2
        suffix = 'nd'
      when 3
        suffix = 'rd'
      else
        suffix = 'th'
      end
    end
  else
    suffix = 'th'
  end
"#{century_num}#{suffix}"
end

# Examples
puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
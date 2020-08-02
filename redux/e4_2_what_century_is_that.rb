# take a positive integer (year)
# return a string (the century)

# centuries begin with years that end in 01 (1901-2000 is the 20th century)

# return value ends in st, nd, rd, th as approptiate for that number
def century(year)
  century_num = (year - 1) / 100 + 1
  century_num.to_s + num_suffix(century_num)
end

def num_suffix(num)
  return 'th' if [11,12,13].include?(num % 100)
  case num % 10
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
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

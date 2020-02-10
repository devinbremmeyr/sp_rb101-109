# Leap years occur every year that is evenly divisible by 4
# unless the year is also divisible by 100 then it is not a leap year
# unless it is evenly divisible by 400

# Prior to 1752 The British empire had the Julian calendar in which every 4th year is a leap year

# write a method that takes any year greater than 0 and returns true or false

def leap_year?(year)
  if year < 1753
    return year % 4 == 0
  end
  if year % 400 == 0
    return true
  elsif year % 100 == 0
    return false
  else
   year % 4 == 0    
  end  
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true
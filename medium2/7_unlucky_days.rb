# take a integer (year) as an argument
# return the number of Friday the 13ths in the year

# you may assume the year is greater than 1752
# => when the UK adopted the gregorian calendar
# => also assume gregorian calendar for the far future
require 'date'

def friday_13th(year)
  thriteenth = Date.new(year, 1, 13)
  unlucky_day_count = 0
  12.times do
    unlucky_day_count += 1 if thriteenth.friday?
    thriteenth = thriteenth.next_month
  end
  unlucky_day_count
end

# Examples
puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2

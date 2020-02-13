# the time of day can be represented by the number of minutes before or after midnight
# if the number of minutes is positive the time is after midnight
# if the number of minutes is negetive the time is before midnight

# take a time using this minute-based format and convert it to 24hr format (hh:mm)

MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def time_of_day(minutes)
  # 24 hr = 1440 minutes
  minutes %= MINUTES_PER_DAY #=> handles negatives
  hours_mins = minutes.divmod(MINUTES_PER_HOUR)
  # output string (hh:mm)
  twenty_four_hour_arr = hours_mins.map do |num| 
    num < 10 ? "0#{num}" : num.to_s
  end
  twenty_four_hour_arr.join(':')
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
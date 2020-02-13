# write two methods that each take a time of day in 24hr format
# and return the number of minutes before and after midnight

MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  total_minutes = (hours * MINUTES_PER_HOUR) + minutes
  total_minutes % MINUTES_PER_DAY
end

def before_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  total_minutes = -1 * ((hours * MINUTES_PER_HOUR) + minutes)
  total_minutes % MINUTES_PER_DAY
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
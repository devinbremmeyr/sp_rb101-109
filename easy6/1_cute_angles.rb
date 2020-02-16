# take a floating point number that represents an angle between 0-360
# return a string that represents that angle in degrees, minutes, and seconds

DEGREE = "\xC2\xB0"

def dms(decimal_angle)
  decimal_angle %= 360
  # calculate degrees minutes and seconds
  total_seconds = (decimal_angle * 3600).round
  degrees, remainder = total_seconds.divmod(3600)
  minutes, seconds = (remainder).divmod(60)
  # return string d^m's"
  sprintf("%d%s%02d'%02d\"", degrees, DEGREE, minutes, seconds)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
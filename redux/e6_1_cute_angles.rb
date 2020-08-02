# take a floating point number (angle 0-360)

# return a string %(30°00'00") conveted to minutes and seconds

DEGREE = "\xC2\xB0"

def dms(angle)
  degrees, remainder = angle.divmod(1)
  total_seconds = (remainder * 3600).round
  minutes, seconds = total_seconds.divmod(60)
  sprintf(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end
# Examples
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

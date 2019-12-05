# 2_how_big_is_the_room?.rb

SQMETERS_TO_SQFEET = 10.7639
SQFEET_TO_SQINCHES = 144
SQCENTIMETERS_TO_METERS = 10_000

# ask the user for the lenght of the room
puts "=> Enter the length of the room in feet:"
length = gets.to_f

# ask the user for the width of the room
puts "=> Enter the width of the room in feet:"
width = gets.to_f

# display the area Note: 1 square meter == 10.7639 square feet
area_feet = (width * length).round(2)
area_inches = (area_feet * SQFEET_TO_SQINCHES).round(2)
area_centimeters = ((area_feet / SQMETERS_TO_SQFEET) \
                      * SQCENTIMETERS_TO_METERS).round(2)
puts "The area of the room is #{area_feet} square feet"
puts "(#{area_inches} square inches)"
puts "(#{area_centimeters} square centimeters)"

# Example Run
# Eneter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).
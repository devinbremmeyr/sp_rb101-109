# 3_tip_calculator

puts "=> What is the bill?"
bill = gets.to_f
puts "=> What is the tip percentage?"
tip_percent = gets.to_f
tip = (bill * (tip_percent / 100)).round(2)
total = (bill + tip).round(2)
puts "The tip is " + sprintf("%#.2f", tip)
puts "The total is " + sprintf("%#.2f", total)

# Example 
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0
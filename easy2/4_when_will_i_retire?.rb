# 4_when_will_i_retire.rb

CURRENT_YEAR = Time.now.year

puts "What is your age?"
current_age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i
years_left = retirement_age - current_age

puts "It's #{CURRENT_YEAR}. You will retire in #{CURRENT_YEAR + years_left}."
puts "You have only #{years_left} years of work to go!"
# Example

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
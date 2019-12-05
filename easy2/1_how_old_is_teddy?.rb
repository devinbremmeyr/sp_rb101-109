# 1_how_old_is_teddy?.rb


# randomly generate a number between 20 and 200
age = rand(20..200)

puts "=> Enter a name to find age:"
name = gets.chomp
name = "Teddy" if name.length < 1
#print Teddy's age
puts "#{name} is #{age} years old!"

# Example output
# => Teddy is 69 years old!
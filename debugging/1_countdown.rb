def decrease(counter)
  # counter -= 1
  counter - 1
end

counter = 10

10.times do
  puts counter
  # decrease(counter)
  counter = decrease(counter)
end

puts 'LAUNCH!'

# the decrease method won't work here
# the intention is to mutate the passed in integer value
# in ruby integers are immutable

# another way of descirbing this issue is that the reassignment is happening in
# the wrong namespace. I fixed the program by having counter reassigned to the 
# return value of decrease on line 11. This means the local variable counter 
# will be updated to the new value. Instead of erroneously reassigning the
# method parameter on line 2.

# a better way to implement this program would be to use Integer#downto

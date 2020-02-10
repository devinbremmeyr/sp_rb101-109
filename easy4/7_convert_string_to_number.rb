# recreate the String#to_i method
# take a string of digits and return the appropriate number as an integer
# do not worry about leading + or - signs
# assume all characters will be numeric

# take a character find the int equivlent
# add the int equivalent to int_out
# multiply int out by 10

def string_to_integer(string_in)
  int_out = 0
  string_in.chars.each do |char|
    int_out *= 10
    int_out += '0123456789'.index(char)
  end
  int_out
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
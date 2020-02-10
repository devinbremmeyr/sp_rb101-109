# add sign fucntionality to your string to integer method

# check first char for +/-
# remove the sign then continue
# at the end if sign == '-' multiply output by -1

def string_to_integer(string_in)
  if string_in[0] == '+' || string_in[0] == '-'
    sign = string_in[0]
    string_in = string_in[1, string_in.size]
  end
  int_out = 0
  string_in.chars.each do |char|
    int_out *= 10
    int_out += '0123456789'.index(char)
  end
  sign == '-' ? int_out * -1 : int_out
end

puts string_to_integer('4321') == 4321
puts string_to_integer('-570') == -570
puts string_to_integer('+100') == 100
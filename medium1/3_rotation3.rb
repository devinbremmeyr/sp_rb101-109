# take a number and return the maximum rotaion of that number

# Note: you do not have to handle multiple zeros

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(digits, n)
  all_digits = digits.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(digits)
  n_digits = digits.to_s.chars.length
  while n_digits > 1
    digits = rotate_rightmost_digits(digits, n_digits)
    n_digits -= 1
  end
  digits
end

# Examples:
puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845

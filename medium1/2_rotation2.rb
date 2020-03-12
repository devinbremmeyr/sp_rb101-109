# take two numbers as arguments
# => number
# => number (n) of last digits to be rotated 

# you may assume that n is always a postive interger
def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(digits, n)
  left_digits, right_digits = digits.divmod(10 ** n)
  right_arr_s = right_digits.to_s.chars
  right_arr_s = rotate_array(right_arr_s)
  right_arr_s.each { |digit| left_digits = (left_digits * 10) + digit.to_i }
  left_digits
end

# Examples: 
puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917

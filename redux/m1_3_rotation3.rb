# rotate numbers

# 735291 => 352917
# now keep first digit in place and rotate the rest
# 352917 => 329175

def max_rotation(num)
  n_arr = num.to_s.split('')
  final_arr = []
  final_arr << n_arr.rotate!.shift until n_arr.size == 0
  final_arr.join.to_i
end

# Examples
puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
puts max_rotation(2_001)

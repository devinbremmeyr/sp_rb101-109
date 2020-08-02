# valid series:
# => contain exactly three odd numbers
# => sum to 47

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  #odd_count = 3 ? true : false
  odd_count == 3
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])       # == true
p valid_series?([1, 12, 2, 5, 16, 6])            # == false
p valid_series?([28, 3, 4, 7, 9, 14])            # == false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])       # == true
p valid_series?([10, 6, 19, 2, 6, 4])            # == false # bug with this case

# The ternary if expression on line 9
# => 3 ? true : false
# will always return true since 3 evaluates as truthy.
# true will then be assigned the variable odd_count

# This is a classic case of using single = where a double == was intended.
# Furthermore the ternary if is unecessary as the comparison of odd_cout to 3
# will retrun a boolean on its own.

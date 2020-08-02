# The code bellow has a bug. Fix the bug and explain why it was printing, 
# the unexpected output.

def my_method(array)
  if array.empty?
    []
  elsif array.size > 1 # select for [3, 4], and [5, 6, 7]
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])         # => []
p my_method([3])        # => [21]
p my_method([3, 4])     # => [9, 16]
p my_method([5, 6, 7])  # => [25, 36, 49]

# The bug was that on line 8 the elsif was missing a condition.
# This caused my_method to retrun nil for input other than the empty array.
# This happens because my_method implicitly returns the return value of the
# if statement. In ruby the if control expression returns the last evaluated
# expression from it's execution. Given the  empty array argument, [] was 
# returned. When [3] was passed in to my_method, the first condition of the 
# if statement on line 5 evaluates to false. Next the elsif branch is tested. 
# Since this branch was given no condition to test, it could neither evaluate as
# true or false. Therefore neither the code within the elsif or the else branch
# are executed. This causes the if statement to return nil. An if statement will
# also return nil like this if there is no else branch and the given condition
# evaluates to false.

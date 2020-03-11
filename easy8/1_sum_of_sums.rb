# take an array of numbers 
# return the sum of the sums of each leading subsequence for that Array
# you may assume the array always contains at least one number

def sum_of_sums(numbers)
  # iterate through array
  # => make a new array containing 'sums'
    # => 'sums' are each item plus the previous sum
  # return sum of items in new array
  running_total = 0
  numbers.map { |num| running_total += num }.sum
end


# Examples:
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

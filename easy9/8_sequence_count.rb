# take two integers as arguments
# => a count
# => the first number of a sequence

# return an array containing the same number elements as the count
# values of each element will be multiples of the starting number

# you may assume that the count will always be 0 or greater
# and the starting number can be any integer value
# if the count is 0 an empty array should be returned

def sequence(count, num0)
  seq_arr = []
  1.upto(count) do |multiple|
    seq_arr << multiple * num0
  end
  seq_arr
end

# Examples:
puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []

# take an array
# rotate the array?
# => move the first element to the end of the array
# => the original array should not be modified

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

# Examples
puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true

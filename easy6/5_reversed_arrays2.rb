# take an array
# return a new array with the elements of the original list in reverse order
# do not modify the original array

def reverse(arr)
  arr_reversed = Array.new(arr.length)
  left_i = 0
  right_i = -1
  middle_i = arr.length / 2
  while left_i < middle_i
    arr_reversed[right_i] = arr[left_i]
    arr_reversed[left_i] = arr[right_i]
    left_i += 1
    right_i -= 1
  end
  arr_reversed[middle_i] = arr[middle_i] if arr.length.odd?
  arr_reversed
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
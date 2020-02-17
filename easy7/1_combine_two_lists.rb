# combine two arrays passed in as arguments
# return a new array that contains all elements from both arrays alternating

def interleave(arr1, arr2)
  arr_out = []
  i = 0
  while i < arr1.length && i < arr2.length
    arr_out << arr1[i]
    arr_out << arr2[i]
    i += 1
  end
  arr_out
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
# take an array
# return two arrays (as a pair of nexted arrays)
# if the original array has an odd number of elements
# put the middle element in the first array

def halvsies(arr)
  half = (arr.length - 1) / 2
  [arr[0..half], arr[(half + 1)..-1]]
end

p halvsies([1,2,3])
puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
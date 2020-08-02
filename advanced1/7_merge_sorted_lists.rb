=begin 
PROBLEM NOTES:
take two sorted arrays as arguments
return a new array that contains all elements from both arguments, sorted, in order

you may not sort the result array. You must build the result array one element 
at a time in the proper order. 

Do not mutate the input arrays!
=end

=begin
  Input: two arrays (sorted)
  Output: one array (combinination of two inputs sorted)
  ##__RULES__##
  Explicit: do not use Array#sort. build result array one element at a time
  Implicit: 
  Clarifying questions: only numbers? empty array? other bad input like nil?
  
  Data Structure: Array
  Algorithm: 
  initialize a new empty (result) array
  initialize a counter (0) to index the shorter array parameter

  parse through the input array1 (element1)
    compare each element1 to the element of array2 indexed by counter
    if the array2 element is lesser
      keep adding elements from the array2 to result array \
      until the current array2 element is greater than element1
    else 
      add element1 to the result array

  add any remaining elements of array2 to result array
  retrun result array 
=end

def merge(arr1, arr2)
  result = []
  idx2 = 0
  arr1.each do |elem1|
    while idx2 < arr2.size && arr2[idx2] < elem1
      result << arr2[idx2]
      idx2 += 1
    end
    result << elem1
  end
  result += arr2[idx2..-1] if idx2 < arr2.size
  result
end

# Examples

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

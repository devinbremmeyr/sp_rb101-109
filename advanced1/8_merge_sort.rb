#Input: unsorted array of a single data type
#output: sorted array

#explicit: use merge sort

# merge sort:
# => recursive algorithm
# 1 => break down into nested sub-arrays
# 2 => merge sub-arrays
# 2 => => sort while merging
# final flattened sorted array

#implicit: elements can be integers, strings, or something else

# question: are array elements unique?

# Data structure: array
# Approach: 
# 1) loop
# => split array in half
# => nest elements from each half in subarray
# => stop if nested array has only one element
# 2) loop
# => 
# => 
# => ....
# => stop when array is flattened

def merge_sort(arr) # won't work for array of arrays?
  return arr if arr.size <= 1
  if arr.size == 2
    arr_0, arr_1 = arr
    return (arr_0 <=> arr_1) == -1 ? [arr_0, arr_1] : [arr_1, arr_0]
  end
  half = arr.size / 2
  branch_1 = arr[0...half]
  branch_2 = arr[half..-1]

  branch_1 = merge_sort(branch_1)
  branch_2 = merge_sort(branch_2)

  merge(branch_1, branch_2)
end

def merge(arr1, arr2)
  result = []
  idx2 = 0
  arr1.each do |elem1|
    while idx2 < arr2.size && (arr2[idx2] <=> elem1) == -1
      result << arr2[idx2]
      idx2 += 1
    end
    result << elem1
  end
  result += arr2[idx2..-1] if idx2 < arr2.size
  result
end

p merge_sort([9, 5, 7, 1, 5, 3, 9, 15])
p merge_sort([9, 5, 7, 1, 3])
p merge_sort([5,3,1])
p merge_sort([])

# Examples
p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

tricky_array = [[:c, :c], [:a, :a], [:d, :d], [:b, :b]]
p merge_sort tricky_array

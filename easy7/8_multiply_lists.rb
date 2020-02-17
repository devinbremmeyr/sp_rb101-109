# take two arrays that both contain the same number of numbers
# retrun a new array that contains the result of multiplying numbers
# =>  from the original arrays at the same index together

def multiply_list(arr1, arr2)
  # arr1.map.with_index { |num, i| num * arr2[i] }
  arr1.zip(arr2).map { |pair| pair.reduce(:*) }
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# take two arrays of numbers
# return a new array of each pair from the original arrays multiplied together
# the result should be sorted by increasing value

def multiply_all_pairs(arr1, arr2)
  arr_out = arr1.map do |num1|
    arr2.map { |num2| num1 * num2 }
  end
  arr_out.flatten.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

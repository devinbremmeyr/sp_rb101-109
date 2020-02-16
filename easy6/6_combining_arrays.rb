# take two arrays
# return an array that contains all of the values from the argument arrays
# do not include dubplicate items even if either original array contaings duplicates

def merge(arr1, arr2)
  arr_out = []
  arr1.each { |elem| arr_out << elem unless arr_out.include?(elem) }
  arr2.each { |elem| arr_out << elem unless arr_out.include?(elem) }
  arr_out
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
puts merge([1,1,1], [2, 2, 2]) == [1,2]
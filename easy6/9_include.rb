# take an array and search values as arguments
# return true if the search value is in array, otherwise return false

def include?(arr, item)
  arr.each do |element|
    return true if element == item
  end
  return false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
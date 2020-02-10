# write a method that takes an array of numbers
# and returns an array with the same number of elements
# and each element has the running total from the original array

def running_total(numbers_in)
  numbers_out = []
  total = 0
  numbers_in.each do | number |
    total += number
    numbers_out.append(total)
  end
  numbers_out
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
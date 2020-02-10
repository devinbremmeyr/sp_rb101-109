# write a method that searches for all multiples of 3 or 5 that lie between 1 and some number
# and then computes the sum of those multiples.

# you may assume that the number passed in is an integer greater than 1
def multisum(num)
  # find multiples of 3 or 5
  multiples = []
  while num > 2
    if (num % 3 == 0) || (num % 5 == 0)
      multiples << num
    end
    num -= 1
  end
  # return sum of multiples
  multiples.reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
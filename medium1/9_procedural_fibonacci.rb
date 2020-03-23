# re-write recursive fibonacci so that it does not require recursion

def fibonacci(n)
  acc1, acc2 = [1, 1]
  while n > 2
    acc1, acc2 = [acc2, acc1 + acc2]
    n -= 1
  end
  acc2
end

# Examples:
# puts fibonacci(1) == 1
# puts fibonacci(5) == 5
# puts fibonacci(20) == 6765
# puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001) # => 4202692702.....8285979669707537501

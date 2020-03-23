# compute the last digit of the nth fibonacci number
require 'csv'
def fibonacci_last(n)
  acc1, acc2 = [1, 1]
  while n > 2
    acc1, acc2 = [acc2, (acc1 + acc2) % 10]
    n -= 1
  end
  acc2
end

CSV.open('fibonacci_lookup.csv', 'wb') do |csv|
  ranges = [(1..15), (16..30), (31..45), (46..60)]
  fib_nums = []
  ranges.each do |range|
    range.each_with_object(fib_nums) do |n, arr|
      arr << fibonacci_last(n)
    end
    csv << fib_nums
    fib_nums = []
  end
end

def fibonacci_last(n)
  n -= 1
  n % 60 == row + col
  CSV.read('fibonacci_lookup.csv')[0][n%60].to_i
end


# Examples:
puts fibonacci_last(15)        #== 0 # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        #== 5 # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       #== 5 # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   #== 1 # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) #== 3 # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123_456_789) #== 4 # -> 4


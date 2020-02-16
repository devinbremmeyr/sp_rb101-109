# take an integer
# return the index of the first fibonacci number with that many digits

def find_fibonacci_index_by_length(num_digits)
  # calculate fibonacci and track index
  index = 2
  a, b = 1, 1
  loop do
    fib_num = b
    break if num_digits >= fib_num.to_s.size
    b = a + b
    a = fib_num
    index += 1
  end
  index
end

puts find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) #== 45
puts find_fibonacci_index_by_length(100) #== 476
puts find_fibonacci_index_by_length(1_000) #== 4782
puts find_fibonacci_index_by_length(10_000) #== 47847
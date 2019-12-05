# 9_sum_of_digits.rb

def sum(number)
  s_num_array = number.to_s.split('')
  s_num_array.map(&:to_i).reduce(:+)
end

# Examples

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
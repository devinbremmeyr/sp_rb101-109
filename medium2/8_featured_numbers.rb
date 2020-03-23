# a featured number is:
# => odd number
# => multiple of 7
# => it's digits must be unique (no repeat digits like 133)

# take an integer as an argument
# return the next featured number greater than the argument
# issue an error message if there is no next featured number

def featured(n)
  n += 1
  n += 1 if n.even?
  n += 2 until (n % 7).zero?
  while n < 9_876_543_202
    return n if n.odd? && !n.to_s.match?(/(\d)\d*\1/)
    n += 14
  end
  'ERROR: No Number exists'
end
puts featured(1) == 7
puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987


puts featured(9_999_999_999) # There is no possible number that fulfills those requirements

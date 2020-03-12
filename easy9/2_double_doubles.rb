# double number: a number with an even number of digits, whose left side digits
# are the same as its right side digits.
# => 44, 3333, 103103, 7676 are double numbers
# =>  444, 334433, and 107 are not

# take a number
# return 2 * that number
# => unless that number is a double number
# => return double numbers as is

def double_number?(num)
  n_str = num.to_s
  half_idx = (n_str.length / 2) - 1 
  if n_str.length.odd?
    false
  elsif n_str[0..half_idx] == n_str[(half_idx + 1)..-1]
    true
  else
    false
  end     
end

def dub_num?(num)
  string_num = num.to_s
  string_num.match?(/\A(\d+)\1\z/)
end

def twice(num)
  return num * 2 unless dub_num?(num)
  num
end

# Examples:
puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10

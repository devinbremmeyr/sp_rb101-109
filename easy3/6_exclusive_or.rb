# 6_exclusive_or.rb

def xor?(bool_1, bool_2)
  if bool_1 && bool_2
    return false
  end
  bool_1 || bool_2
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
# 10_whats_my_bonus?.rb

def calculate_bonus(salary, eligible)
  if eligible
    return salary/2
  else
    return 0
  end
end

# Examples

puts calculate_bonus(2_800, true) == 1_400
puts calculate_bonus(1_000, false) == 0
puts calculate_bonus(50_000, true) == 25_000
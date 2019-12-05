# 6_odd_numbers.rb

# Print all odd numbers form 1 to 99 inclusive
# Print each number on a seperate line
=begin
i = 1
while i < 100
  puts i
  i += 2
end
=end
1.upto(99) {|i| puts i if i.odd?}
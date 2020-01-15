# 1_searching_101.rb

def prompt(message)
  puts "==> #{message}"
end

numbers = []

%w(1st 2nd 3rd 4th 5th last).each do |ith|
  prompt "Enter the #{ith} number:"
  numbers << gets.chomp.to_i
end

final_number = numbers.pop
number_contained = numbers.include?(final_number) ? "appears" : "does not appear"

puts "The number #{final_number} #{number_contained} in #{numbers}."
# 10_palindrome_numbers.rb

# Write a method that returns true if it's integer argument is palindromic.

def palindromic_number?(num)
  # return false 
  numbers = []
  while num > 0
  numbers << (num % 10)
  num /= 10
  end
  i = 1
  while i <= (numbers.length / 2)
    return false if numbers[i-1] != numbers[-i]
    i += 1
  end
  return true
end

# Examples
p palindromic_number?(123) == false
p palindromic_number?(323) == true
p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
p palindromic_number?(030) == true
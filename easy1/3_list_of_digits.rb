# 3_list_of_digits.rb


# define a method that takes a positive int and returns a list of digits


# Use the number as a string or use %

def digit_list(num)
  #num.to_s.chars.map(&:to_i)
  output = []
  i = 1
  output << num if num == 0
  while i < n 
    output.unshift((num % (i * 10)) / i)
    i *= 10
  end
  output
end

# Examples
puts digit_list(12_345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375_290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
puts digit_list(0) == [0]
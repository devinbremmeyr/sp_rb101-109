# 7_Stringy_Strings.rb

#Write a method that takes a positive int and returns a sting of 0's and 1's
# always starting with 1. The length of the string should match the int.

def stringy(size, start_num=1)
  digit = start_num == 1 ? '10' : '01'
  stringy = digit * size
  stringy[0, size]
end

# Examples
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(0) == ''
puts stringy(1) == '1'
puts stringy(4, 0) == '0101'

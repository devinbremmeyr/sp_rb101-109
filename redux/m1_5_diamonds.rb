=begin 
PROBLEM NOTES:
take an integer that specifies an n x n grid
the integer will always be odd
=end

=begin
  Input: integer
  Output: print out a diamond
  ##__RULES__##
  Explicit: print rows of '*' each row is an odd number
            there will be n rows
            the largest row will be n wide
  Implicit: 
  Clarifying questions: use spaces for right side of diamond? 
  
  Data Structure: string
  Algorithm:
  initilze a variable distance from center to
  
  print out n rows
  each row will call String#center.(n) 
  so we just need to specify the number of '*'

  couting up loop
  print the center row
  countind down loop
  
  define the number stars in a row given a row number  
  center row => n stars
  center + 1 => n - 2 stars
  number of stars = n - (2*distance from the center)
=end

def number_of_stars(n, distance)
  n - (2 * distance)
end

def diamond(n)
  half = n / 2
  (half).downto(1) do |distance|
    puts ('*' * number_of_stars(n, distance)).center(n)
  end
  puts ('*' * n)
  (1).upto(half) do |distance|
    puts ('*' * number_of_stars(n, distance)).center(n)
  end
end

diamond(1)

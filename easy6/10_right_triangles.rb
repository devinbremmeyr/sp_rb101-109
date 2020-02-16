# take a positive integer n 
# display a right triangle whose sides each have n stars

def triangle(n)
  i = 1
  while i <= n
    puts (" " * (n - i)) + ('*' * i)
    i += 1
  end
end
triangle(5)
triangle(9)

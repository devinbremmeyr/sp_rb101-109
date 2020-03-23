# take an integer n
# return (1 + 2 + 3 ... + n)**2 - (1**2 + 2**2 + 3**2 ... n**2)

def sum_square_difference(n)
  sum_of_integers_squared = (n * (n + 1) / 2) ** 2
  sum_of_squared_integers = (n * (n + 1) * (2 * n + 1)) / 6
  sum_of_integers_squared - sum_of_squared_integers
end

# Examples
puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150

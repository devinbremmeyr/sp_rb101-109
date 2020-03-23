# Triangle types:
# => equilateral: 3 sides equal length
# => isoceles: 2 sides equal length, 3rd is different
# => scalene: all 3 sides are of different lengths

# to be a valid triangle
# => a + b > c where c is the longest side and a, b are the shorter sides
# => a, b, and c > 0 (all sides greater than 0)
# otherwise the tirangle is invalid

# take 3 numbers (lengths of the three sides)
# return a symbol :equilateral, :isosceles, :scalene, :invalid

def triangle(a, b, c)
  return :invalid unless [a, b, c].all? { |side| side > 0 }
  a, b, c = [a, b, c].sort
  return :invalid unless a + b > c

  if a == c
    :equilateral
  elsif a == b || b == c
    :isosceles
  else
    :scalene
  end
end

# Examples:
puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid

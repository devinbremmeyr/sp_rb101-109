# trangle classification:
# => Right: one angle is 90 degrees
# => acute: all 3 angles are less than 90 degrees
# => obtuse: one angle is greater than 90 degrees

# to be a valide triangle
# => the sum of the angles must be exactly 180
# => all angles must be greater than 0

# take 3 numbers (3 angles in degrees)
# return as a symbol
# => :right
# => :acute
# => :obtuse
# => :invalid

# you may assume angles are given in integers of degrees

def triangle(a, b, c)
  angles = [a, b, c]
  return :invalid unless angles.all? { |x| x > 0 } && angles.sum == 180

  if angles.any?(90)
    :right
  elsif angles.any? { |x| x > 90 }
    :obtuse
  else
    :acute
  end
end

# Examples
puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid

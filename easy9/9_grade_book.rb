# take three integers
# => determine the averge of the three
# => return a corresponding letter grade as a string

def get_grade(*scores)
  average_score = scores.sum / scores.length
  case average_score
  when (90..100) then 'A'
  when (80...90) then 'B'
  when (70...80) then 'C'
  when (60...70) then 'D'
  when (0...60) then 'F'
  end
end

# Examples:
puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"

# take an integer
# return an array of all integers in sequence between 1 and the argument

# you may assume that the argument will always be a valid integer greater than 0

def sequence(num)
  (1..num).to_a
end

# Examples:

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# transpose a 3 x 3 matrix

# a 3x3 matrix can be represented by an array of arrays
# transpose: exchange the columns and rows of a matrix 

# write a method that takes a 3 x 3 array
# and returns a new array as the result of transposing the input array

def transpose(matrix)
  # initialize new 3 x 3 array t_matrix
  # pass each element of matrix[0] to t_matrix[0][0], [1][0], [2][0]
  # => repeat this for matrix[1] then matrix[2]
  # return t_matrix
  t_matrix = Array.new(3) { Array.new(3) }
  matrix.each_with_index do |row, idx|
    t_matrix[0][idx], t_matrix[1][idx], t_matrix[2][idx] = row
  end
  t_matrix
end

def transpose!(m)
  # for a 3 x 3 only 3 swaps are needed
  m[0][1], m[1][0] = m[1][0], m[0][1]
  m[0][2], m[2][0] = m[2][0], m[0][2]
  m[1][2], m[2][1] = m[2][1], m[1][2]
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

# Examples
=begin
new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
=end
transpose!(matrix)
matrix.each { |elem| p elem } #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]

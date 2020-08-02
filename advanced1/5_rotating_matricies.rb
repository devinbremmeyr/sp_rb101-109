=begin 
PROBLEM NOTES:
90-degree rotation produces a matrix in which each side of the matrix is rotated
clockwise be 90 degrees

matrix rotaion examples

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
r_90_matrix = [
  [3, 4, 1],
  [9, 7, 5],
  [6, 2, 8]
]

matrix = [
  [3, 4, 1],
  [9, 7, 5]
]

r_90_matrix = [
  [9, 3],
  [7, 4],
  [5, 1]
]

take a matrix and return a rotated matrix
=end

=begin
  Input: nested array (matrix of arbitrary size)
  Output: nested array (rotated 90)
  ##__RULES__##
  Explicit: take MxN matrix return NxM matrix
            each side of the matrix is rotated by 90 degrees
  Implicit: 4 rotations should result in the original matrix
  Clarifying questions: should i worry about, nil input, [], arrays that are not
  valid matrix e.g. [[1], [1, 2]]
  
  Data Structure: array
  Algorithm:
  notice that a rotated matrix is similar to a transposed matrix

  [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
  [[3, 4, 1], [9, 7, 5], [6, 2, 8]] rotated
  [[1, 4, 3], [5, 7, 9], [8, 2, 6]] transposed

  use the transpose method then
  take the transposed matrix and swap the first and last element of each row
=end

def rotate90(matrix)
  transpose(matrix).each do |row|
    row[0], row[-1] = row[-1], row[0]
  end
end

def transpose(matrix)
  m = matrix.size
  n = matrix[0].size
  t_matrix = Array.new(n) { Array.new(m) }
  m.times do |m_i|
    n.times do |n_i|
      t_matrix[n_i][m_i] = matrix[m_i][n_i]
    end
  end
  t_matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

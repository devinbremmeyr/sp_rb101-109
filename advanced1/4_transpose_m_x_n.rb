=begin 
PROBLEM NOTES:
modify your transpose method from the previous exercise to work with any
matrix with at least 1 row and 1 column.
=end

=begin
  Input: nested array (matrix of dimensions MxN)
  Output: nested array (matrix of dimensions NxM)
  ##__RULES__##
  Explicit: transpose input array
  Implicit: 
  Clarifying questions: can we assume 'nice' input, will each matrix have
  complete rows?
  
  Data Structure: Array
  Algorithm:
    initialize a new empty N x M matrix
       n  n    
    m[[1, 2],        m  m  m
    m [1, 2],  => n[[1, 1, 1],
    m [1, 2]]     n [2, 2, 2]]
  0, 1, 2
  
=end

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

# Examples
puts transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
puts transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
puts transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
puts transpose([[1]]) == [[1]]

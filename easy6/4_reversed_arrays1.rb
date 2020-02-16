# take an array and reverse the order of it's elements
# the return value should be the same Array

def reverse!(arr)
  i = 0
  while i < arr.length 
    arr.insert(i, arr.pop)
    i += 1   
  end  
  arr
end

list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"]
puts list == ["c", "d", "e", "b", "a"]

list = ['abc']
puts reverse!(list) == ["abc"]
puts list == ["abc"]

list = []
puts reverse!(list) == []
puts list == []
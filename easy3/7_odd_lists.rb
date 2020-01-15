# 7_odd_lists.rb

# Write a method taht retuns and Array containing every other element of an input
# Array.

def oddities(array)
  odds = []
  array.each_with_index do |element, i|
    next if i.odd?
    odds << element
  end
  odds
end

p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
p oddities(['abc', 'def']) #== ['abc']
p oddities([123]) #== [123]
p oddities([]) #== []
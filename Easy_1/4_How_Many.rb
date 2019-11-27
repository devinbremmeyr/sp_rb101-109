# 4_How_Many?

#Define a method that counts repeat elements in an array

def how_many(array)
  count_hash = {}
  array.each{|x| 
    if count_hash[x]
      count_hash[x] += 1
    else
      count_hash[x] = 1
    end
  }
  count_hash.each{|key, val| puts "#{key} => #{val}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

how_many(vehicles)

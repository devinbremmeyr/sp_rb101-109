# take a grocery list (array) of fruits with quantities
# => convert it into an array of the correct number of each fruit

# input is an array made of up two element arrays ['fuit', number]
# output array of strings
# => repeat each 'fruit' string number of times

def buy_fruit(list)
  cart = []
  list.each do |fruit, num|
    num.times { cart << fruit }
  end
  cart
end

# Example:
puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

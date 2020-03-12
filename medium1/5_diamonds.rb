# display a 4-pointed diamond in an n x n grid where n is an odd integer
# n is supplied as an argument
# you may assume n will always be an odd integer

def print_row(diamond_size, number_stars)
  if number_stars == 1
    puts '*'.center(diamond_size)
  else
    space = ' ' * (number_stars - 2)
    puts ('*' + space + '*').center(diamond_size)
  end
end

def diamond(diamond_size)
  number_stars = 1
  while number_stars < diamond_size
    print_row(diamond_size, number_stars)
    number_stars += 2
  end
  while number_stars >= 1
    print_row(diamond_size, number_stars)
    number_stars -= 2
  end
end

puts "=> DIAMOND 1"
diamond(1)
puts "=> DIAMOND 3"
diamond(3)
puts "=> DIAMOND 9"
diamond(9)
puts "=> DIAMOND 105"
diamond(105)

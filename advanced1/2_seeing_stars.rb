# write a method that displays an 8-pointed star in an nxn
# n is an odd integer supplied as an argument to the method
# the smallest star is a 7x7 grid

# Algorithm
# put 2 '*' centered (n)
# put n '*'
# put 3 '*' centered (n)

def center_row(gird_size)
  '*' * gird_size
end

def x_row(grid_size, distance_to_center)
  middle_star_padding = (distance_to_center -1) * 2 + 1
  ('*' + '*'.center(middle_star_padding) + '*').center(grid_size)
end

def star(n)
  return nil if n < 7 || n.even?
  x_rows = (n - 1) / 2
  x_rows.downto(1) { |distance_to_center| puts x_row(n, distance_to_center) }
  puts center_row(n)
  1.upto(x_rows) { |distance_to_center| puts x_row(n, distance_to_center) }
  nil
end

# draw sine wave on 100 x 24 grid (x 0 to 99, y -12 to 12)

def draw_sine_wave
  grid = Array.new(25) { Array.new(100) }
  grid.map!.with_index do |row, idx|
    y = (idx - 12) * -1 # idx (0 => 24) => y (12 => -12)
    row.map!.with_index do |_, x|
      if y == (12 * Math.sin(x / 10.0)).round
        'O'
      elsif y == 0
        '_'
      else
        '.'
      end
    end
    row.unshift(y.to_s[-1] + ' |')
    row.join
  end
  puts grid
end

draw_sine_wave

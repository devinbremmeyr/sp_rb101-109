# write a method that will take a short line of text and print it within a box

def print_in_box(statement)
  puts '+-' + ('-' * statement.size) + '-+'
  puts '| ' + (' ' * statement.size) + ' |'
  puts "| #{statement} |"
  puts '| ' + (' ' * statement.size) + ' |'
  puts '+-' + ('-' * statement.size) + '-+'
end

print_in_box('To boldly go where no one has gone before.')
puts ''
print_in_box('')
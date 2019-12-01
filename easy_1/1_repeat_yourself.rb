# 1_repeat_yourself.rb

# define a method that takes two argumetns (str, +int) and prints the string
# (+int) many times

def repeat(message, number)
  number.times { puts message }
end
# Example
repeat('Hello', 3)
repeat('Goodbye', 0)
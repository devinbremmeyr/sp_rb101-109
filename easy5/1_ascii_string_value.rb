# return the ASCII string value of a string that is passed in as an argument.
# The ASCII value is the sum of the ASCII values of every character in the string.

def ascii_value(str)
  str.chars.reduce(0) do |total, char|
    total + char.ord
  end
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
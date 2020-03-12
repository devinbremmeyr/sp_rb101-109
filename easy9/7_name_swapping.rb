# take a first name a space and last name as a string argument
# return a string that contains the last name, a comma, a space, and the first name.

def swap_name(name)
  name_arr = name.split
  "#{name_arr[1]}, #{name_arr[0]}"
end

# Example:
puts swap_name('Joe Roberts') == 'Roberts, Joe'

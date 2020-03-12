# take two arguments, an array and a hash
# => the array will contain two or more strings that joined with spaces make a person's name
# => the hash will have keys :title and :occupation

# return a greeting using the persons full name
# => mention the persons title and occupation

def greetings(name_arr, job_hsh)
  full_name = name_arr.join(' ')
  print "=> Hello, #{full_name}! " 
  print "Nice to have a #{job_hsh[:title]} #{job_hsh[:occupation]} around.\n"
end

# Example:

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

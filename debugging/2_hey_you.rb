def shout_out_to(name)
  #name.chars.each { |c| c.upcase! }
  puts 'HEY ' + name.upcase
end

shout_out_to('you') # expected: 'HEY YOU'

# there is a lot happening on line 2 in the shout_out_to method.
# => first String#chars is called on the method parameter name
# => String#chars technically calls String#each_char then calls Enumerable#to_a
# => on the returned enumerator
# => The array of characters returned are duplicates of the substrings from the 
# => origonal string not references to them.
# => Therefore String#upcase! on line 2 is not mutating the origonal string 
# => passed in as an argument to the method.

# Line 2 is unnecessecarily complicated. Simply calling String#upcase on line 3
# will work better. String#upcase! could also be used if mutation is desired.

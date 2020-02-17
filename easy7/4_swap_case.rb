# take a string 
# return a new string in which every letter has it's case swapped

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(str)
  swap_arr = str.chars.map do |char|
    if UPPERCASE.include?(char)
      LOWERCASE[UPPERCASE.index(char)]
    elsif LOWERCASE.include?(char)
      UPPERCASE[LOWERCASE.index(char)]
    else
      char
    end
  end
  swap_arr.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

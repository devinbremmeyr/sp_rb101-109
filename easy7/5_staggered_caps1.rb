# take a string as an argument
# retrun a new string like the original with a staggered capitalization scheme
# => every other letter is upper or lower case
# => non-letters should not be changed but count for alternating

def staggered_case(str)
  str_out = ''
  str.chars.each_with_index do |char, i|
    str_out += i.even? ? char.upcase : char.downcase
  end
  str_out
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
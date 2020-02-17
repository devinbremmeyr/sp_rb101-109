# modify staggered_case so it ignores non-alphabetic characters
# output should still include non-alphbetic characters
# only igrnore them for case alternation

def first_letter_caps?(str)
  first_letter_index = str.index(/[a-z]/i)
  return str[first_letter_index].match?(/[A-Z]/) if first_letter_index

  false
end

def staggered_case(str, use_case: false, ignore_non_alpha: false)
  str_out = ''
  make_upcase = !(use_case && first_letter_caps?(str))
  
  str.chars.each do |char|
    if char.match?(/[a-z]/i)
      str_out += make_upcase ? char.upcase : char.downcase
      make_upcase = !make_upcase
    else
      str_out += char
      make_upcase = !make_upcase unless ignore_non_alpha
    end
  end

  str_out
end

my_str = '...I love my wife'
other_str = "now that's a spicy meatball"

puts staggered_case('I Love Launch School!', ignore_non_alpha: true) ==
     'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS', ignore_non_alpha: true) ==
     'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers', ignore_non_alpha: true) ==
     'IgNoRe 77 ThE 444 nUmBeRs'
puts staggered_case(my_str, use_case: true, ignore_non_alpha: false) ==
     '...I LoVe mY WiFe'
puts staggered_case(other_str, ignore_non_alpha: false) ==
     "NoW ThAt's a sPiCy mEaTbAlL"
puts staggered_case(my_str, use_case: true) == '...I LoVe mY WiFe'

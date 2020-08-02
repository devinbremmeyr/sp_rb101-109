=begin 
PROBLEM NOTES:
rational number: can be represented as a fraction of integers
unit fraction: rational number where the numerator is one
egyptian fraction: the sum of a series of disinct unit fractions
e.g. : (1/2) + (1/3) + (1/13) + (1/15)

write two methods:
egyptian: takes a rational number as an argument, returns an array of denominators

unegyptian: takes an array of numbers in the same format and calculates a rational number

You will need to use the Rational class provided by Ruby.
=end

=begin
  Input: rational number
  Output: array of integers (denominators of egyptian fractions)
  ##__RULES__##
  Explicit: egyptian fraction is the sum of unique unit fractions
  Implicit: 
  Clarifying questions:
  
  Data Structure: array
  Algorithm:
 
=end
def egyptian(r_num)  
  denominators_arr = [] << largest_unit_fraction_denominator(r_num)
  test_denominator = denominators_arr[0] + 1
  loop do 
    approximate_num = unegyptian(denominators_arr)
    return nil if approximate_num > r_num
    break if approximate_num == r_num
    if Rational(1, test_denominator) + approximate_num <= r_num
      denominators_arr << test_denominator
    end
    test_denominator += 1
  end
  denominators_arr 
end

def unegyptian(denominators_arr)
  denominators_arr.map { |denom| Rational(1, denom) }.sum
end

def largest_unit_fraction_denominator(r_num)
  denominator = 1
  denominator += 1 until Rational(1, denominator) <= r_num
  denominator
end

# Examples:

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

p unegyptian([2, 2]) == 1/1r
p unegyptian([4, 4, 4]) == 3/4r

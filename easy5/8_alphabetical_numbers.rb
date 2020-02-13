# take an array of integers between 0 and 19
# return an array of those integers sorted based on the english words for each number

NUMBERS_IN_ENGLISH = %w(zero one two three four five six seven eight nine ten eleven twelve
  thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(num_arr)
  num_arr.sort_by{ |num| NUMBERS_IN_ENGLISH[num] }
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

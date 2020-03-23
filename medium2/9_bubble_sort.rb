# bubble sort for an array

def bubble_sort!(arr)
  loop do
    no_swaps = true
    0.upto(arr.size - 2) do |i|
      next if arr[i] < arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      no_swaps = false
    end
    break if no_swaps
  end
end

# Examples:
p array = [5, 3]
p bubble_sort!(array)
p array #== [3, 5]

p array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array #== [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array #== %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

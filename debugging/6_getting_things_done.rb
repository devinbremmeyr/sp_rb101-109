def move(n, from_array, to_array)
  return nil if n == 0            # add this base case
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# Invoking move on line 12 causes a SystemStackError, What does this error mean?
# Why does it happen?

# The move method is implemented recursivley and does not define a base case in
# which the function will retrun. This means that the ruby interpreter keeps
# calling new instances of the move method without resolving any of them. This
# is similar to an infinite loop, although instead of never exiting this program
# will fail when the machine stack space is exceeded.

# This can be resolved by adding a base case to this recursive method on line 2
# Better yet would be to implement this method iteratively

def better_move(n, from_array, to_array)
  n = from_array.size if n > from_array.size
  n.times { to_array << from_array.shift }
end

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # ['coffee with Tom']
p done # ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

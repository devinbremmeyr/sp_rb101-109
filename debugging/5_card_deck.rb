cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.dup,
         :diamonds => cards.dup,
         :clubs    => cards.dup,
         :spades   => cards.dup } # cards.dup required

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  card_scores = remaining_cards.map do |card| # assign return value to variable
    score(card) 
  end

  sum += card_scores.sum # += is unessecarry only + is needed
end

puts sum

# This code produced a TypeError attempting to sum symbol with int on line 34
# this was due to the result of calling map on remaining cards not being saved
# to a variable. Therefore when Enumerable#sum was called on line 34, the 
# calling array still containged a mixture of symbols and integers.

# Now that the code runs, sum is lower than it should be. Why is that?

# This issue is caused by the way deck was initialized on line 3. Each key in 
# the deck hash points to the same array object. If lines 20-25 are commented 
# out the sum of all the cards in the deck will accurately be calculated as 380.
# The problem comes when one value of the deck hash is modified, all values 
# are effected.

# This issue can be solved by using Object#dup on cards when initializing the 
# deck hash.

# take a string as an argument
# return true if all parentheses in the string are properly matched
# => return false otherwise
PAIR = { ')' => '(', ']' => '[', '}' => '{'}.freeze
OPEN_BRACKETS = ['(', '[', '{'].freeze

def balanced?(str)
  bracket_stack = []
  quote_matched = nil
  str.each_char do |char|
    quote_matched = quote_check(char, quote_matched)
    bracket_check!(char, bracket_stack)
    break if bracket_stack.frozen?
  end
  bracket_stack.empty? && !bracket_stack.frozen? && !quote_matched
end

def quote_check(char, quote_match)
  return nil if char == quote_match
  return char if !quote_match && char.match?(/['"]/)
  quote_match
end

def bracket_check!(char, bracket_stack)
  return if bracket_stack.frozen?
  bracket_stack << char if OPEN_BRACKETS.include?(char)
  return unless PAIR.key?(char)
  if PAIR[char] != bracket_stack.last
    bracket_stack.freeze
  else
    bracket_stack.pop
  end
end

# Examples:
puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false

puts balanced?('([({})])') == true
puts balanced?(']') == false
puts balanced?('({)}') == false

puts balanced?('"') == false
puts balanced?("'[']") == true
puts balanced?(%q("{'''}")) == true
puts balanced?(%q("'"')) == false


def prompt(message)
  puts "=> #{message}"
end

prompt "Enter a noun: "
noun = gets.chomp
prompt "Enter a verb: "
verb = gets.chomp
prompt "Enter an adjective: "
adjective = gets.chomp
prompt "Enter an adverb: "
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!" 
# Example

=begin
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!
=end

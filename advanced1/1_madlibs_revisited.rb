require 'yaml'

WORD_BANK = YAML.load_file('word_bank.yml')

MADLIB = File.new('madlib.txt', 'r')

def get_word(type)
  WORD_BANK[type].sample
end

MADLIB.each do |line| 
  puts line.gsub(/\[([a-z]+)\]/) { get_word($1) }  
end



# Example:

=begin
The sleepy brown cat noisily
licks the sleepy yellow
dog, who lazily licks his
tail and looks around.
=end

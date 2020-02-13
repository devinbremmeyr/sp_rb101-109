# does spin_me return a new string or modify the string passed in?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

hello = 'hello world'
puts hello.object_id
puts spin_me(hello).object_id # "olleh dlrow"
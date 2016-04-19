=begin
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")
=end

puts "
def scream(words)
  words = words + \"!!!!\"
  return
  puts words
end

scream(\"Yippeee\")

The method returns nothing because the explicit 'return' 
within the code block was not passed a value.

"

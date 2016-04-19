=begin
Feel free to uncomment and test the code.
y = 0
3.times do
  y += 1
  x = y
end
puts x
=end
puts "
y = 0
3.times do
  y += 1
  x = y
end
puts x

This code will produce an undefined local variable or method 'x' error because 'x' hasn't been initialized outside of the code block.

"


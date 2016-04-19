puts "Mutating an array while iterating over it won't turn out well."

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

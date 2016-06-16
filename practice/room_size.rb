puts "Enter the length of the room in meters:"
answer1 = gets.chomp.to_f

puts "Enter the width of the room in meters:"
answer2 = gets.chomp.to_f

square_meters = answer1 * answer2
square_feet = square_meters * 10.7639

puts "The area of the room is #{square_meters} square meters (#{square_feet.round(2)} square feet)."

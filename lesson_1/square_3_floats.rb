
def square_3_floats
  floats = []
  puts "Let's square 3 floats!"
  puts "Please enter a float: "
  float_1 = gets.chomp.to_f
  floats.push(float_1)
  puts "Please enter another float: "
  float_2 = gets.chomp.to_f
  floats.push(float_2)
  puts "Please enter you third and final float: "
  float_3 = gets.chomp.to_f
  floats.push(float_3)
  if floats.length != 3
    puts "You must enter exactly 3 floats!"
  end
  print "\n"
  floats.each { |float| puts float ** 2 }
  puts "That's it!"
end
  
#calls code in square_3_floats
square_3_floats
 

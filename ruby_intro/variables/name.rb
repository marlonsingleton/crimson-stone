
def name
  print "Please enter your name: "
  the_name = gets.chomp.capitalize
  puts "Greetings #{the_name}, would you like to play a game?"
end

#calls the code in name
name

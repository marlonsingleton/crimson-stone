
def name
  print "Please enter your name: "
  the_name = gets.chomp.capitalize
  puts "Greetings #{the_name}, would you like to play a game?"
  10.times { puts "#{the_name} "}
  puts "I'm sorry there's a glitch in my program."
end

#calls the code in name
name

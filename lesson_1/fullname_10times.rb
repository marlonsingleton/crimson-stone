
def name
  print "Please enter your first name: "
  first_name = gets.chomp.capitalize
  print "Please enter your last name: "
  last_name = gets.chomp.capitalize
  full_name = first_name + " " + last_name
  puts "Greetings #{full_name}, would you like to play a game?"
  10.times { puts "#{full_name} "}
  puts "I'm sorry there's a glitch in my program."
end

#calls the code in name
name

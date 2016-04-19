
def between_zero_onehundred
  print "Please enter a number between 0 and 100: "
  number = gets.chomp.to_i
  if number < 0
    puts "Oops, you entered a number less than zero."
  elsif number >= 0 && number <= 50
    puts "You entered a number between 0 and 50."
  elsif number >= 51 && number <= 100
    puts "You entered a number between 51 and 100."
  else number > 100
    puts "Oops, you entered a number above 100." 
  end
end

between_zero_onehundred



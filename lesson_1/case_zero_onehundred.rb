
def between_zero_onehundred
  print "Please enter a number between 0 and 100: "
  number = gets.chomp.to_i
  case number
  when 0..50
    puts "You entered a number between 0 and 50."
  when 51..100
    puts "You entered a number between 51 and 100."
  else
    if number < 0
      puts "Sorry, you entered a number less than 0."
    elsif
      puts "Oops, you entered a number above 100." 
    end
  end
end

between_zero_onehundred



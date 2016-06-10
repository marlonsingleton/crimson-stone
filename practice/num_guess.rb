puts "Please guess a number between 1 and 100"
comp_guess = (1..100).to_a.sample
counter = 1
loop do
  answer = gets.chomp.to_i
  if answer < comp_guess
    puts "You guessed too low."
    puts "Guess again!"
    counter += 1
  elsif answer > comp_guess
    puts "You guess to high."
    puts "Guess again!"
    counter += 1
  else 
    puts "Yep #{comp_guess} is correct. It took you #{counter} attempts."
    break
  end
end

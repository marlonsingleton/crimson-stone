

while true do
  puts "What is your name again? Please enter \"STOP\" or \"stop\" and I will stop asking you."
  x = gets.chomp.upcase
  if x == "STOP"
    break
  end
  puts "Hi #{x.capitalize}! I seem to be stuck in a loop."
end 
  

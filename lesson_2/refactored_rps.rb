
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_name?(name)
  /[[:alpha:]]+/.match(name).to_s == name
end

def valid_choice?(answer)
  %w(1 2 3).include?(answer)
end

def you_win(name)
  prompt("#{name.capitalize}, you win!")
end

def you_lose(name)
  prompt("#{name.capitalize}, you lose!")
end

def winner?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if winner?(player, computer)
    you_win(NAME)
  elsif winner?(computer, player)
    you_lose(NAME)
  else
    prompt("So it's a tie!")
  end
end

game_choices = { choice: %w(rock paper scissors) }

prompt("Welcome to the Rock, Paper, Scissors Game!")

loop do
  prompt("Please enter your name:")
  NAME = Kernel.gets().chomp()
  break if valid_name?(NAME)
  prompt("Try again.")
end

answer = ''
loop do
  loop do
    prompt("Choose 1) for 'Rock', 2) for 'Paper', and 3) for 'Scissors'")
    answer = Kernel.gets().chomp()
    break if valid_choice?(answer)
    prompt("Try again.")
  end

  players_pick = game_choices[:choice][answer.to_i - 1]
  computers_pick = game_choices[:choice].sample

  prompt("You picked #{players_pick} and the computer chose #{computers_pick}.")

  display_results(players_pick, computers_pick)

  prompt("Would you like to play again? Enter 'Y' to continue...")
  yes_or_no = Kernel.gets().chomp()

  break if yes_or_no.casecmp('y') != 0
end

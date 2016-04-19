
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_name?(name)
  /[[:alpha:]]+/.match(name).to_s == name
end

def valid_choice?(answer)
  %w(1 2 3 4 5).include?(answer)
end

def you_win(name)
  prompt("#{name.capitalize}, you win!")
end

def you_lose(name)
  prompt("#{name.capitalize}, you lose!")
end

game_choices = { choice: %w(rock paper scissors lizard spock) }

prompt("Welcome to the Rock, Paper, Scissors, Lizard, Spock Game!")

loop do
  prompt("Please enter your name:")
  NAME = Kernel.gets().chomp()
  break if valid_name?(NAME)
  prompt("Try again.")
end

answer = ''
loop do
  loop do
    prompt("Choose 1) for 'Rock', 2) for 'Paper', 3) for 'Scissors', 4) for 'Lizard' and 5) for 'Spock'")
    answer = Kernel.gets().chomp()
    break if valid_choice?(answer)
    prompt("Try again.")
  end

  players_pick = game_choices[:choice][answer.to_i - 1]
  computers_pick = game_choices[:choice].sample

  prompt("You picked #{players_pick} and the computer chose #{computers_pick}.")

  case
  when players_pick == computers_pick
    prompt("So it's a tie!")
  when (players_pick == 'rock' && computers_pick == 'scissors')
    you_win(NAME)
  when (players_pick == 'paper' && computers_pick == 'rock')
    you_win(NAME)
  when (players_pick == 'scissors' && computers_pick == 'paper')
    you_win(NAME)
  when (players_pick == 'rock' && computers_pick == 'lizard')
    you_win(NAME)
  when (players_pick == 'lizard' && computers_pick == 'spock')
    you_win(NAME)
  when (players_pick == 'spock' && computers_pick == 'scissors')
    you_win(NAME)
  when (players_pick == 'scissors' && computers_pick == 'lizard')
    you_win(NAME)
  when (players_pick == 'lizard' && computers_pick == 'paper')
    you_win(NAME)
  when (players_pick == 'paper' && computers_pick == 'spock')
    you_win(NAME)
  when (players_pick == 'spock' && computers_pick == 'rock')
    you_win(NAME)
  else
    you_lose(NAME)
  end

  prompt("Would you like to play again? Enter 'Y' to continue...")
  yes_or_no = Kernel.gets().chomp()

  break if yes_or_no.casecmp('y') != 0
end

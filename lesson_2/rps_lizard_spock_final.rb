
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_name?(name)
  /[[:alpha:]]+/.match(name).to_s == name
end

def valid_choice?(answer)
  %w(r p s l S).include?(answer)
end

def you_win(name)
  prompt("#{name.capitalize}, you win!")
end

def you_lose(name)
  prompt("#{name.capitalize}, you lose!")
end

game_choices = { r: "rock", p: "paper", s: "scissors", l: "lizard", S: "spock" }

prompt("Welcome to the Rock, Paper, Scissors, Lizard, Spock Game!")

loop do
  prompt("Please enter your name:")
  NAME = Kernel.gets().chomp()
  break if valid_name?(NAME)
  prompt("Try again.")
end

tie_counter = 0
player_counter = 0
computer_counter = 0
game_counter = 0
answer = ''
loop do
  loop do
    prompt("Choose 'r' for 'Rock', 'p' for 'Paper', 's' for 'Scissors', 'l' for 'Lizard' and 'S' for 'Spock'")
    answer = Kernel.gets().chomp()
    break if valid_choice?(answer)
    prompt("Try again.")
  end

  players_pick = game_choices[:"#{answer}"]
  comp_choice = %w(r p s l S).sample
  computers_pick = game_choices[:"#{comp_choice}"]

  prompt("You picked #{players_pick} and the computer chose #{computers_pick}.")

  # I'll DRY this logic up later
  case
  when players_pick == computers_pick
    prompt("So it's a tie!")
    tie_counter += 1
  when (players_pick == 'rock' && computers_pick == 'scissors')
    you_win(NAME)
    player_counter += 1
  when (players_pick == 'paper' && computers_pick == 'rock')
    you_win(NAME)
    player_counter += 1
  when (players_pick == 'scissors' && computers_pick == 'paper')
    you_win(NAME)
    player_counter += 1
  when (players_pick == 'rock' && computers_pick == 'lizard')
    you_win(NAME)
    player_counter += 1
  when (players_pick == 'lizard' && computers_pick == 'spock')
    you_win(NAME)
    player_counter += 1
  when (players_pick == 'spock' && computers_pick == 'scissors')
    you_win(NAME)
    player_counter += 1
  when (players_pick == 'scissors' && computers_pick == 'lizard')
    you_win(NAME)
    player_counter += 1
  when (players_pick == 'lizard' && computers_pick == 'paper')
    you_win(NAME)
    player_counter += 1
  when (players_pick == 'paper' && computers_pick == 'spock')
    you_win(NAME)
    player_counter += 1
  when (players_pick == 'spock' && computers_pick == 'rock')
    you_win(NAME)
    player_counter += 1
  else
    you_lose(NAME)
    computer_counter += 1
  end

  game_counter += 1
  prompt("Games Played:#{game_counter},  Won:#{player_counter}  Loses:#{computer_counter}  Ties:#{tie_counter}")

  prompt("Would you like to play again? Enter 'Y' to continue...")
  yes_or_no = Kernel.gets().chomp()

  break if yes_or_no.casecmp('y') != 0
end

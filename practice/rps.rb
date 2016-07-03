class Player
  attr_accessor :name, :choice
  def initialize
    @name = ""
    @choice = ""
  end
end

class Human < Player
  def plays
    puts "#{name} please choose Rock, Paper or Scissors."
    loop do
      self.choice = gets.chomp.downcase
      break if ['rock', 'paper', 'scissors'].include?(choice)
      puts "Sorry, you must enter a valid option. Rules are rules!"
    end
  end

  def ask_name
    puts "What is your name?"
    loop do
      self.name = gets.chomp.capitalize
      break unless name.empty?
      puts "You must enter a name."
    end
  end
end

class Computer < Player
  def initialize
    self.name = ['Mark V', 'Vulcan', 'Blackmoon', 'Spartacus'].sample
  end

  def plays
    self.choice = ['rock', 'paper', 'scissors'].sample
  end
end

class RpsGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def game_play
    human.ask_name
    welcome_message
    loop do
      human.plays
      computer.plays
      display_choices
      determine_winner
      break if play_again? == "n"
    end
    exit_message
  end

  def welcome_message
    print "#{human.name}, welcome to the RPS Game! "
    puts "Your opponent will be #{computer.name}."
    puts "Get ready to play!!!\n\n"
  end

  def display_choices
    p "You chose #{human.choice}."
    p "#{computer.name} chose #{computer.choice}."
  end

  def determine_winner
    if human.choice == computer.choice
      puts "It's a tie!"
    else
      outcome = case human.choice
                when 'rock'
                  computer.choice == 'paper' ? "#{computer.name} won!" : "You won!"
                when 'paper'
                  computer.choice == 'scissors' ? "#{computer.name} won!" : "You won!"
                when 'scissors'
                  computer.choice == 'rock' ? "#{computer.name} won!" : "You won!"
                end
      puts outcome
    end
  end

  def play_again?
    puts "Shall we play again? (y/n)"
    answer = ''
    loop do
      answer = gets.chomp.downcase
      break if ["y", "n"].include?(answer)
      puts "Please be clear. It's either 'y' or 'n'!"
    end
    answer
  end

  def exit_message
    puts "Thanks for playing!"
  end
end
RpsGame.new.game_play

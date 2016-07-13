class CellMoves
  attr_accessor :moves, :human_wins, :computer_wins
    def initialize
      @moves = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      @human_wins = ["X", "X", "X"]
      @computer_wins = ["O", "O", "O"]
    end
end

class Board < CellMoves

  def ttt_board
    puts ""
    puts " #{moves[0]} | #{moves[1]} | #{moves[2]} "
    puts "-----------"
    puts " #{moves[3]} | #{moves[4]} | #{moves[5]} "
    puts "-----------"
    puts " #{moves[6]} | #{moves[7]} | #{moves[8]} "
    puts ""
  end
end

class Plays < Board
  attr_accessor = :row, :cell

  def computer_selection
    random = (0..8).to_a.sample
    if moves[random] == " "
      moves[random] = "O"
    else
      self.computer_selection
    end
  end
   
  def human_selection
    puts "Please choose a row(1, 2 or 3)!"
    @row = gets.chomp
    self.good_row?
  end

  def cell_selection
    puts "Please select (l)eft, (m)iddle or (r)ight cell."
    @cell = gets.chomp.downcase
    self.good_cell?
  end

  def good_row?
    if ("123").include?(@row) && @row.size == 1
      self.cell_selection
    else
      puts "Not valid, try again!"
      puts ""
      self.human_selection
    end
  end

  def good_cell?
    if ("lmr").include?(@cell) && @cell.size == 1
      self.decide_row
    else
      puts "Not valid, try again!"
      puts ""
      self.cell_selection
    end
  end

  def decide_row
    if @row == "1" && moves[0, 3].include?(" ")
      self.row_one
    elsif @row == "2" && moves[3, 3].include?(" ")
      self.row_two
    elsif @row == "3" && moves[6, 3].include?(" ")
      self.row_three
    else
      puts "That row is full!"
      self.human_selection
    end
  end

  def row_one
    copy = moves[0, 3]
    moves[0] = "X" if @cell == "l" && moves[0] == " "
    moves[1] = "X" if @cell == "m" && moves[1] == " "
    moves[2] = "X" if @cell == "r" && moves[2] == " "
    puts "That move is taken!" if copy == moves[0, 3]
    self.human_selection if copy == moves[0, 3]
  end

  def row_two
    copy = moves[3, 3]
    moves[3] = "X" if @cell == "l" && moves[3] == " "
    moves[4] = "X" if @cell == "m" && moves[4] == " "
    moves[5] = "X" if @cell == "r" && moves[5] == " "
    puts "That move is taken!" if copy == moves[3, 3]
    self.human_selection if copy == moves[3, 3]
  end

  def row_three
    copy = moves[6, 3]
    moves[6] = "X" if @cell == "l" && moves[6] == " "
    moves[7] = "X" if @cell == "m" && moves[7] == " "
    moves[8] = "X" if @cell == "r" && moves[8] == " "
    puts "That move is taken!" if copy == moves[6, 3]
    self.human_selection if copy == moves[6, 3]
  end
end

class Game < Plays
  attr_accessor :human, :computer, :combos 
  attr_reader :welcome

  def welcome
    system "clear"
    puts "Welcome to Tic Tac Toe!"
    puts ""
    self.ask_names
    system "clear"
    puts "Greetings #{@human}! Your opponent is #{@computer}!"
    puts "Let's begin!"
  end

  def ask_names
    loop do
      puts "What is your name?"
      @human = gets.chomp.capitalize
      break if @human.empty? == false
      puts "You must enter a name!"
    end
    @computer = ["Mark V", "Sonny", "Hal", "Linux"].sample
  end

  def all_outcomes
    return true if self.human_outcomes
    return true if self.computer_outcomes
    return true if self.board_full
  end

  def winning_combos
    @combos = []
    combos << moves[0, 3]
    combos << moves[3, 3]
    combos << moves[6, 3]
    combos << moves.values_at(0, 3, 6)
    combos << moves.values_at(1, 4, 7)
    combos << moves.values_at(2, 5, 8)
    combos << moves.values_at(0, 4, 8)
    combos << moves.values_at(2, 4, 6)
  end

  def human_outcomes
    self.winning_combos
    outcome = combos.select { |combo| combo == human_wins}
    outcome.flatten == human_wins
  end

  def computer_outcomes
    self.winning_combos
    outcome = combos.select { |combo| combo == computer_wins}
    outcome.flatten == computer_wins
  end

  def board_full
    return true if moves.include?(" ") == false
  end
  
  def who_won?
    puts "#{@human}, You won!" if human_outcomes
    puts "#{@computer} won!" if computer_outcomes
    if human_outcomes == false && computer_outcomes == false
      puts "It's a draw!"
    end
  end

  def goodbye
    puts "Thanks for playing!"
  end

  def play
    welcome
    loop do
      ttt_board
      human_selection
      break if all_outcomes
      computer_selection
      system "clear"
      break if all_outcomes
    end
    system "clear"
    ttt_board
    who_won?
    goodbye
  end
end

game = Game.new
game.play

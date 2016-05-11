
def board_display(moves, tournament)
  system "clear"
  puts "Tournament Mode: Be the first to win 5 games!" if tournament == "y"
  puts "You're Playing Tic Tac Toe"
  puts "You will be 'Xs' and the computer will be 'Os'\n\n"
  puts "| #{moves['1l']} | #{moves['1m']} | #{moves['1r']} |"
  puts "-------------"
  puts "| #{moves['2l']} | #{moves['2m']} | #{moves['2r']} |"
  puts "-------------"
  puts "| #{moves['3l']} | #{moves['3m']} | #{moves['3r']} |\n\n"
end

my_choices = ["1l", "1m", "1r", "2l", "2m", "2r", "3l", "3m", "3r"]

def board_assignment(choices)
  place_holder = {}
  choices.each { |choice| place_holder[choice] = " " }
  place_holder
end

def empty_squares(moves)
  moves.keys.select { |choice| moves[choice] == " " }
end

def computer_moves(moves, w_c)
  puts "Computer thinking..."
  sleep 2
  if defensive_moves(moves, w_c).empty? && offensive_moves(moves, w_c).empty?
    selection = empty_squares(moves).sample
    moves[selection] = "O"
  elsif winning_moves(moves, w_c).empty? != true
    do_winning_move(moves, w_c)
  elsif defensive_moves(moves, w_c).empty?
    do_off_move(moves, w_c)
  else
    do_def_move(moves, w_c)
  end
end

def board_full?(moves)
  empty_squares(moves) == []
end

def someone_won?(moves, winning_combo)
  !!detect_winner(moves, winning_combo)
end

def winning_combo
  [["1l", "1m", "1r"], ["2l", "2m", "2r"], ["3l", "3m", "3r"]] +
    [["1l", "2l", "3l"], ["1m", "2m", "3m"], ["1r", "2r", "3r"]] +
    [["1l", "2m", "3r"], ["1r", "2m", "3l"]]
end

def defensive_moves(moves, winning_combo)
  winning_combo.select do |combo|
    moves.values_at(combo[0], combo[1], combo[2]).count("X") == 2 &&
      moves.values_at(combo[0], combo[1], combo[2]).count(" ") == 1
  end
end

def offensive_moves(moves, winning_combo)
  winning_combo.select do |combo|
    moves.values_at(combo[0], combo[1], combo[2]).include?("O") &&
      moves.values_at(combo[0], combo[1], combo[2]).count("X") == 0
  end
end

def winning_moves(moves, winning_combo)
  winning_combo.select do |combo|
    moves.values_at(combo[0], combo[1], combo[2]).count("O") == 2 &&
      moves.values_at(combo[0], combo[1], combo[2]).count("X") == 0
  end
end

def do_def_move(moves, winning_combo)
  best_move = defensive_moves(moves, winning_combo)
  choice = best_move.flatten.select { |square| moves[square] == " " }.first
  moves[choice] = "O"
end

def do_off_move(moves, winning_combo)
  best_move = offensive_moves(moves, winning_combo)
  choice = best_move.flatten.select { |square| moves[square] == " " }.first
  moves[choice] = "O"
end

def do_winning_move(moves, winning_combo)
  best_move = winning_moves(moves, winning_combo)
  choice = best_move.flatten.select { |square| moves[square] == " " }.first
  moves[choice] = "O"
end

def detect_winner(moves, winning_combo)
  winning_combo.each do |combo|
    if moves.values_at(combo[0], combo[1], combo[2]).count("X") == 3
      return "You"
    elsif moves.values_at(combo[0], combo[1], combo[2]).count("O") == 3
      return "The computer"
    end
  end
  nil
end

def row_check?(row)
  (1..3).cover?(row.to_i)
end

def column_check?(column)
  %w(l m r).include?(column)
end

def valid_move?(moves, row_column)
  empty_squares(moves).include?(row_column)
end

row_column = " "
loop do # see if user would like to play again
  puts "Tournament mode? Enter (y)es or (n)o."
  tournament = gets.chomp.downcase
  counter = []
  who_starts = 0
  loop do
    moves = board_assignment(my_choices)
    moves["2m"] = "O" if who_starts.odd? # % 2 != 0
    loop do # play until someone wins
      board_display(moves, tournament)
      loop do # check if square is full
        row = " "
        loop do
          puts "Select a row (1, 2, 3): "
          row = gets.chomp
          break if row_check?(row)
          puts "Sorry, please try again."
        end

        column = " "
        loop do
          puts "Select (l)eft, (m)iddle or (r)ight column:"
          column = gets.chomp.downcase
          break if column_check?(column)
          puts "Sorry, your selection is not valid."
        end

        row_column = row + column
        break if valid_move?(moves, row_column)
        puts "Sorry, that square has been taken, try again!"
      end
      moves[row_column] = "X"
      board_display(moves, tournament)
      break if someone_won?(moves, winning_combo) || board_full?(moves)
      computer_moves(moves, winning_combo)
      break if someone_won?(moves, winning_combo) || board_full?(moves)
    end

    board_display(moves, tournament)

    if someone_won?(moves, winning_combo)
      puts "#{detect_winner(moves, winning_combo)} won!"
    else
      puts "It's a tie"
    end

    break if tournament != "y"

    who_starts += 1
    counter << "You" if detect_winner(moves, winning_combo) == "You"
    puts "You win the tournament!" if counter.count("You") == 5
    counter << "The computer" if detect_winner(moves, winning_combo) == "The computer"
    puts "Sorry, you lost the tournament." if counter.count("The computer") == 5
    puts "Wins: You- #{counter.count('You')}, Computer- #{counter.count('The computer')}"
    sleep 2
    break if counter.count("You") == 5
    break if counter.count("The computer") == 5
  end

  puts "Enter (y)es to play again!"
  answer = gets.chomp.downcase
  break if answer != "y"
end

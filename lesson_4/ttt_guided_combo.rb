
def board_display(moves)
  system "clear"
  puts "You're Playing Tic Tac Toe"
  puts "You will be 'Xs' and the computer will be 'Os'\n\n"
  puts "| #{moves['1l']} | #{moves['1m']} | #{moves['1r']} |"
  puts "-------------"
  puts "| #{moves['2l']} | #{moves['2m']} | #{moves['2r']} |"
  puts "-------------"
  puts "| #{moves['3l']} | #{moves['3m']} | #{moves['3r']} |"
  puts ""
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

def computer_moves(moves)
  puts "Computer thinking..."
  sleep 2
  selection = empty_squares(moves).sample
  moves[selection] = "O"
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
  moves = board_assignment(my_choices)
  loop do # play until someone wins
    board_display(moves)
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
    board_display(moves)
    break if someone_won?(moves, winning_combo) || board_full?(moves)
    computer_moves(moves)
    break if someone_won?(moves, winning_combo) || board_full?(moves)
  end

  board_display(moves)

  if someone_won?(moves, winning_combo)
    puts "#{detect_winner(moves, winning_combo)} won!"
  else
    puts "It's a tie"
  end

  puts "Enter (y)es to play again!"
  answer = gets.chomp.downcase
  break if answer != "y"
end

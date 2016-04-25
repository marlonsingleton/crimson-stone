def row_check?(row)
  (1..3).cover?(row.to_i)
end

def square_check?(square)
  (["r", "m", "l"]).include?(square)
end

def display
  p BOARD[:ttt_row_1].join
  p "-------"
  p BOARD[:ttt_row_2].join
  p "-------"
  p BOARD[:ttt_row_3].join
end

def row_1_check
  if (BOARD[:ttt_row_1][1] != " ") && (BOARD[:ttt_row_1][1] == BOARD[:ttt_row_1][3]) && (BOARD[:ttt_row_1][1] == BOARD[:ttt_row_1][5])
    puts "\nYou Win!" if BOARD[:ttt_row_1][1] == "X"
    puts "\nYou Lose!" if BOARD[:ttt_row_1][1] == "O"
    return true
  end
end

def row_2_check
  if (BOARD[:ttt_row_2][1] != " ") && (BOARD[:ttt_row_2][1] == BOARD[:ttt_row_2][3]) && (BOARD[:ttt_row_2][1] == BOARD[:ttt_row_2][5])
    puts "\nYou Win!" if BOARD[:ttt_row_2][1] == "X"
    puts "\nYou Lose!" if BOARD[:ttt_row_2][1] == "O"
    return true
  end
end

def row_3_check
  if (BOARD[:ttt_row_3][1] != " ") && (BOARD[:ttt_row_3][1] == BOARD[:ttt_row_3][3]) && (BOARD[:ttt_row_3][1] == BOARD[:ttt_row_3][5])
    puts "\nYou Win!" if BOARD[:ttt_row_3][1] == "X"
    puts "\nYou Lose!" if BOARD[:ttt_row_3][1] == "O"
    return true
  end
end

def column_1_check
  if (BOARD[:ttt_row_1][1] != " ") && (BOARD[:ttt_row_1][1] == BOARD[:ttt_row_2][1]) && (BOARD[:ttt_row_1][1] == BOARD[:ttt_row_3][1])
    puts "\nYou Win!" if BOARD[:ttt_row_1][1] == "X"
    puts "\nYou Lose!" if BOARD[:ttt_row_1][1] == "O"
    return true
  end
end

def column_2_check
  if (BOARD[:ttt_row_1][3] != " ") && (BOARD[:ttt_row_1][3] == BOARD[:ttt_row_2][3]) && (BOARD[:ttt_row_1][3] == BOARD[:ttt_row_3][3])
    puts "\nYou Win!" if BOARD[:ttt_row_1][3] == "X"
    puts "\nYou Lose!" if BOARD[:ttt_row_1][3] == "O"
    return true
  end
end

def column_3_check
  if (BOARD[:ttt_row_1][5] != " ") && (BOARD[:ttt_row_1][5] == BOARD[:ttt_row_2][5]) && (BOARD[:ttt_row_1][5] == BOARD[:ttt_row_3][5])
    puts "\nYou Win!" if BOARD[:ttt_row_1][5] == "X"
    puts "\nYou Lose!" if BOARD[:ttt_row_1][5] == "O"
    return true
  end
end

def diagonal_check_1
  if (BOARD[:ttt_row_2][3] != " ") && (BOARD[:ttt_row_1][1] == BOARD[:ttt_row_2][3]) && (BOARD[:ttt_row_1][1] == BOARD[:ttt_row_3][5])
    puts "\nYou Win!" if BOARD[:ttt_row_2][3] == "X"
    puts "\nYou Lose!" if BOARD[:ttt_row_2][3] == "O"
    return true
  end
end
  
def diagonal_check_2
  if (BOARD[:ttt_row_2][3] != " ") && (BOARD[:ttt_row_1][5] == BOARD[:ttt_row_2][3]) && (BOARD[:ttt_row_1][5] == BOARD[:ttt_row_3][1])
    puts "\nYou Win!" if BOARD[:ttt_row_2][3] == "X"
    puts "\nYou Lose!" if BOARD[:ttt_row_2][3] == "O"
    return true
  end
end

def status
  return true if row_1_check
  return true if row_2_check
  return true if row_3_check
  return true if column_1_check
  return true if column_2_check
  return true if column_3_check
  return true if diagonal_check_1
  return true if diagonal_check_2
end

def counter(count)
  puts "It's a tie!" if count == 9
  return true if count == 9
end

def clear_row_1
  BOARD[:ttt_row_1][1] = " "
  BOARD[:ttt_row_1][3] = " "
  BOARD[:ttt_row_1][5] = " "
end

def clear_row_2
  BOARD[:ttt_row_2][1] = " "
  BOARD[:ttt_row_2][3] = " "
  BOARD[:ttt_row_2][5] = " "
end

def clear_row_3
  BOARD[:ttt_row_3][1] = " "
  BOARD[:ttt_row_3][3] = " "
  BOARD[:ttt_row_3][5] = " "
end

def clear_board
  clear_row_1
  clear_row_2
  clear_row_3
end

BOARD = { ttt_row_1: ["|", " ", "|", " ", "|", " ", "|"], ttt_row_2: ["|", " ", "|", " ", "|", " ", "|"],
ttt_row_3: ["|", " ", "|", " ", "|", " ", "|"] }

loop do
puts "Welcome to Tic Tac Toe"
puts "You will be 'Xs' and the computer will be 'Os'"

  loop do # turn loop or exit

    display
    count = 0  

    puts "Enter (y)es to continue!"
    continue = gets.chomp
    break if continue.downcase != "y"
  
    loop do # position selection loop
      row = 0
      loop do
        puts "Select a row (1, 2, 3):"
        row = gets.chomp
        break if row_check?(row)
        puts "Sorry, please try again."
      end

      square = ""
      loop do
        puts "Select (l)eft, (m)iddle or (r)ight square:"
        square = gets.chomp
        break if square_check?(square)
        puts "Sorry, your selection is not valid."
      end

      case
      when (row == "1") && (square == "l") && (BOARD[:ttt_row_1][1] == " ") then BOARD[:ttt_row_1][1] = "X"
        break
      when (row == "1") && (square == "m") && (BOARD[:ttt_row_1][3] == " ") then BOARD[:ttt_row_1][3] = "X"
        break 
      when (row == "1") && (square == "r") && (BOARD[:ttt_row_1][5] == " ") then BOARD[:ttt_row_1][5] = "X"
        break
      when (row == "2") && (square == "l") && (BOARD[:ttt_row_2][1] == " ") then BOARD[:ttt_row_2][1] = "X"
        break
      when (row == "2") && (square == "m") && (BOARD[:ttt_row_2][3] == " ") then BOARD[:ttt_row_2][3] = "X"
        break
      when (row == "2") && (square == "r") && (BOARD[:ttt_row_2][5] == " ") then BOARD[:ttt_row_2][5] = "X"
        break
      when (row == "3") && (square == "l") && (BOARD[:ttt_row_3][1] == " ") then BOARD[:ttt_row_3][1] = "X"
        break
      when (row == "3") && (square == "m") && (BOARD[:ttt_row_3][3] == " ") then BOARD[:ttt_row_3][3] = "X"
        break
      when (row == "3") && (square == "r") && (BOARD[:ttt_row_3][5] == " ") then BOARD[:ttt_row_3][5] = "X"
        break
      else
        puts "This square has been filled." 
      end
    end

    display

    break if status
    count += 1
    break if counter(count)

    puts "Now it's the computer's turn."
    sleep 2

    loop do
      select_row = BOARD.keys.sample
      select_index = [1, 3, 5].sample

      case
      when BOARD[select_row][select_index] == " "
        BOARD[select_row][select_index] = "O"
        break
      else 
        puts "Still thinking..."
        sleep 2
      end
    end

    break if status
    count += 1
    break if counter(count)
  end

  display
  clear_board
  puts "Select (y)es to play again!"
  answer = gets.chomp 
  break if answer.downcase != "y"
end

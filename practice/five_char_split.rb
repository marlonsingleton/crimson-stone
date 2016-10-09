def five_char_split(str)
  new_str = str.split.join
  start, finish, five_chars = [0, 4, ""]
  loop do 
    break if new_str[start..finish] == nil
    five_chars << new_str[start..finish]
    five_chars << " " if new_str[finish + 1] != nil
    start, finish = [start + 5, finish + 5]
  end
  five_chars.upcase
end

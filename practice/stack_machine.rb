def minilang(str)
  stack = []
  register = 0
  str.split.each do |item|
    if item.to_i != 0
      register = item.to_i
    end
    case item
    when "PUSH"
      stack << register
    when "ADD"
      register = register + stack.last
      stack.pop
    when "SUB"
      register = register - (stack.last)
      stack.pop
    when "MULT"
      register = register * stack.last
      stack.pop
    when "DIV"
      register = register / stack.last
      stack.pop
    when "MOD"
      register = register % stack.last
      stack.pop
    when "POP"
      register = stack.last
      stack.pop
    when "PRINT"
      puts register
    end
  end
  nil
end

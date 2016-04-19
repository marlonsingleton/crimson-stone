=begin
#This code will not return anything because call method missing from block.

def execute(&block)
  block #.call is missing
end

execute { puts "Hello from inside the execute method!" }
=end

puts "
def execute(&block)
  block #.call is missing so calling this method will print nothing to the screen
end

execute { puts 'Hello from inside the execute method!' }
\n"


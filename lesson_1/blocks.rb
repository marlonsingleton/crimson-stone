
def myblock(&block)
  puts "Hello, where's the block?"
  block.call 
end

myblock { puts "Here's the block of code I was looking for right here!!!" }


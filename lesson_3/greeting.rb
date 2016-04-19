message = <<-MSG
if false
  greeting = "hello world"
end

greeting

MSG
puts message
puts "Sure greeting can't be 'hello world', however it's interesting 'greeting' is nil instead of throwing an error."

if false
  greeting = “hello world”
end

p greeting # now I see the value of greeting is nil.

Kernel.puts "This calucaltor will perform an action on 2 numbers!"
Kernel.print "Please enter the first number: "
first_number = Kernel.gets().chomp()
Kernel.print "Please enter the second number: "
second_number = Kernel.gets().chomp()
Kernel.puts "Now select operation you want performed... 1) Add, 2)Subtract, 3)Multiply, 4)Divide."
operation = Kernel.gets().chomp()
if operation == "1"
  result = first_number.to_i + second_number.to_i
  Kernel.puts "#{first_number} + #{second_number} equals #{result}"
elsif operation == "2"
  result = first_number.to_i - second_number.to_i
  Kernel.puts "#{first_number} - #{second_number} equals #{result}"
elsif operation == "3"
  result = first_number.to_i * second_number.to_i
  Kernel.puts "#{first_number} * #{second_number} equals #{result}"
elsif operation == "4"
  result = first_number.to_f / second_number.to_f
  Kernel.puts "#{first_number} / #{second_number} equals #{result.round(2)}"
else
  Kernel.puts "Maybe you did not enter a proper values, feel free to try again!"
end

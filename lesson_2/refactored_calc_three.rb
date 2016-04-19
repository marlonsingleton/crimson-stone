def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  return false if number.empty?()
  /^\d*\.?\d*$/.match(number).to_s == number # Allows floats and integers
end

prompt("Welcome to Calculator! Enter your name: ")

name = ''
loop do
  name = Kernel.gets().chomp()
  prompt("Make sure to use a valid name.") if name.empty?()
  break if name.empty?() == false
end

prompt("Hi #{name}!")

number1 = ''
number2 = ''
loop do
  loop do
    prompt("What's the first number? ")
    number1 = Kernel.gets().chomp()
    break if valid_number?(number1)
    prompt("Hmmm.... that doesn't look like a valid number.")
  end

  loop do
    prompt("What's the second number? ")
    number2 = Kernel.gets().chomp()
    break if valid_number?(number2)
    prompt("Hmm... that doesn't look like a valid number.")
  end

  operator_prompt = <<-OPS
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  OPS

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    break if %w(1 2 3 4).include?(operator)
    prompt("Must chosee 1, 2, 3, 4")
  end

  result = case operator
           when '1'
             prompt("Adding #{number1.to_f()} to #{number2.to_f()}...")
             number1.to_f() + number2.to_f()
           when '2'
             prompt("Subtracting #{number2.to_f} from #{number1.to_f}...")
             number1.to_f() - number2.to_f()
           when '3'
             prompt("Multiplying #{number1.to_f()} by #{number2.to_f()}...")
             number1.to_f() * number2.to_f()
           when '4'
             prompt("Dividing #{number1.to_f()} by #{number2.to_f()}...")
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

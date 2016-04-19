
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  return false if number.empty?()
  /^\d*\.?\d*$/.match(number).to_s == number # Allows floats and integers
end

valid_language = %w(BP DE EN ES FR)
only_choices = valid_language.join(", ") # Rubocop didn't like #{valid_language.join(", ")} on line 22.

language = ''
loop do
  prompt("Choice a Language: 'BP', 'DE', 'EN', 'ES' or 'FR'")
  language = Kernel.gets().chomp()
  break if valid_language.include?(language.upcase)
  prompt("Try again. Please only enter #{only_choices}.")
end

prompt(MESSAGES[language]["welcome"])

name = ''
loop do
  name = Kernel.gets().chomp()
  prompt(MESSAGES[language]["valid_name"]) if name.empty?()
  break if name.empty?() == false
end

print(MESSAGES[language]["greeting"])
print(" #{name}!\n")

number1 = ''
number2 = ''
loop do
  loop do
    prompt(MESSAGES[language]["first_number"])
    number1 = Kernel.gets().chomp()
    break if valid_number?(number1)
    prompt(MESSAGES[language]["valid_number"])
  end

  loop do
    prompt(MESSAGES[language]["second_number"])
    number2 = Kernel.gets().chomp()
    break if valid_number?(number2)
    prompt(MESSAGES[language]["valid_number"])
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
    prompt(MESSAGES["ops_selection"])
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

  prompt(MESSAGES[language]["calculate_again"])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

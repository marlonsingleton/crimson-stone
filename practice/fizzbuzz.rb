
def fizzbuzz(num1, num2)
  outcome = []
  (num1..num2).to_a.each do |num|
    if num % 15 == 0
      outcome << 'FizzBuzz'
    elsif num % 5 == 0
      outcome << 'Buzz'
    elsif num % 3 == 0
      outcome << 'Fizz'
    else
      outcome << num
    end
  end
  outcome.join(' ')
end

p fizzbuzz(1, 30)

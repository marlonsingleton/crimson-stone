def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end
p "factors of 0, -1 and 15 without division by 0 or infinite loop"
p factors(-1)
p factors(0)
p factors(15)

bonus = <<-MSG
'number % dividend == 0' determines if number is being divided without a remainder.
'divisors' at the end of the method block implicitly returns it to the method.
MSG

puts bonus

fibonacci = <<-MSG

limit = 15

def fib(first_num, second_num)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is \#{result}"

MSG

puts fibonacci
puts "The above code will error because the limit variable is outside of the scope of the method."

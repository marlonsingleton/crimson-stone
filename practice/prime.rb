def prime(num1, num2)
  (num1..num2).to_a.select do |num|
    prime_array = []
    (2..num).to_a.each do |div|
      prime_array << num if num % div == 0
    end
    prime_array.length == 1
  end
end
 
p prime(1, 21)

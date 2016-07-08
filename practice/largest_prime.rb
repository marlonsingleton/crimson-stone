def prime(num1 = 1, num2)
  outcome = (num1..num2).to_a.select do |num|
    prime_array = []
    (2..num).to_a.each do |div|
      prime_array << num if num % div == 0
      break if prime_array.length > 1
    end
    prime_array.length == 1
  end
  outcome.last
end
 
p prime(100000, 101500)
#p prime(600851475143) # uncomment at own risk, will take several minutes to run

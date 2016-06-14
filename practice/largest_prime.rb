def prime(num1 = 1, num2)
  outcome = (num1..num2).to_a.select do |num|
    prime_array = []
    (2..num).to_a.each do |div|
      prime_array << num if num % div == 0
    end
    prime_array.length == 1 && num2 % num == 0
  end
  outcome[-1]
end
 
p prime(13195)
#p prime(600851475143) # uncomment at own risk, will take several minutes to run

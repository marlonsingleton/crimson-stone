def prime?(num)
  prime_array = (2..num).to_a.select do |div|
    num if num % div == 0
  end
  prime_array.length == 1
end
 
p prime? 2

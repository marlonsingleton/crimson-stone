#Project Eluer.net
#Find the sum of all the multiples of 3 or 5 below 1000.
def three_five_sum
  outcome = (1...1000).to_a.select do |num|
     num % 3 == 0 || num % 5 == 0
   end
  total = 0
  outcome.each do |num|
    total += num
  end
  total
end

p three_five_sum

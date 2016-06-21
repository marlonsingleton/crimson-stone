n = 3

# each element of the range is returned...great!
(1..n).reduce(0) { |sum, num| p "#{num}" } 

(1..n).reduce(0) { |sum, num| sum + num } # returns 6 as expected...great!

(1..n).reduce { |sum, num| sum + num } # also, returns 6 as expected...great!


# here comes my problem
puts ""
(1..n).reduce { |sum, num| p "#{num}" } # num not given value on first iteration

puts ""
(1..n).reduce { |sum, num| p "#{sum}" } # sum value only assigned after first iteration

puts""
(1..n).reduce(0) { |sum, num| p "#{sum}" } # 0 returned on each iteration

# Therefore, why is 0 not the default value in shorter expression?

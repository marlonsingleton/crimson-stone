index_1 = 0
index_2 = 1
even_num_total = 0
my_array = [1, 2]

loop do
  num = my_array[index_1] + my_array[index_2]
  break if num > 4000000
  my_array << num
  index_1 += 1
  index_2 += 1
end

p "The final value #{my_array[-1]} did not exceed 4 million"

my_array.keep_if { |num| num % 2 == 0 }
p "Even terms #{my_array.join(", ")}"

my_array.each { |num| even_num_total += num }
p "Sum of even terms #{even_num_total}"

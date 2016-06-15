def take(my_array, index = 1)
  my_array[index..-1]
end

my_array = [1, 2, 3]

p take(my_array)
p take(my_array, 1)
p take(my_array, 2)

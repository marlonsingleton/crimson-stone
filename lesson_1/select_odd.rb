
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = my_array.select { |item| item % 2 != 0 }

p new_array



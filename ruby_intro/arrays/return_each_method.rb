puts '
Considering arr = [15, 7, 18, 5, 12, 8, 5, 1]
The index method arr.index(5) will return the first index that contains 5'
arr = [15, 7, 18, 5, 12, 8, 5, 1]
p arr.index(5)
puts "
This syntax arr.index[5] is incorrect and will return an error because the method requires () and not [].
See...
return_each_method.rb:8:in `<main>': undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index> (NoMethodError)"
puts '
This syntax arr[5] will return the value of index 5.'
p arr[5]
puts "\n"

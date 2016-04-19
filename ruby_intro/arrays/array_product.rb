arr = ["b", "a"]
puts "
I've assigned arr = [\"b\", \"a\"]
If we use the product method like below
arr = arr.product(Array(1..3)) is essentially arr.product([1, 2, 3])
We get the following output"
arr = arr.product(Array(1..3)) 
p arr 
puts '
We can use arr.first.delete(arr.first.last) to delete 
the last index of the first array which is ["b", 1].'  
arr.first.delete(arr.first.last)
p arr
arr = ["b", "a"]
puts '
If I reassign arr = ["b", "a"]
and call product on an array of the array like so arr = arr.product([Array(1..3)])
which is essentially arr.product([[1, 2, 3]])
We get the following output'
arr = arr.product([Array(1..3)])
p arr
puts '
Now the first array is ["b", [1, 2, 3]], so if we use arr.first.delete(arr.first.last)
to delete the last index of the first array we get the following result.'
arr.first.delete(arr.first.last)
p arr
puts ""


def interleave(arr1, arr2)
  final_array = []
  arr1.length.times do 
    final_array << arr1.shift
    final_array << arr2.shift
  end
  final_array
end

arr1 = ["a", "b", "c", "d"]
arr2 = [ 1, 2, 3, 4]

p interleave(arr1, arr2)

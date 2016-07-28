def reverse(arr)
  num1, num2, new_arr = [0, -1, []]
  arr.length.times do 
    new_arr[num1] = arr.values_at(num2)
    num1, num2 = [num1 + 1, num2 - 1]
  end
  new_arr.flatten
end

p reverse([1, 2, 3, 4])

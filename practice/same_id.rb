def reverse!(arr)
  num1, num2 = [0, -1]
  new_arr = arr
  test_arr = arr.select { |num| num }
  arr.length.times do 
    new_arr[num1] = test_arr[num2]
    num1, num2 = [num1 + 1, num2 - 1]
  end
  new_arr
end

# arr = [1, 2, 3, 4]
# result = reverse!(arr)
# p result
# p arr
# p arr == result
# p arr.object_id == result.object_id

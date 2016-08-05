def bubble_sort!(arr)
  dex0, dex1, sort_count = [0, 1, 0]
  loop do
    num1, num2 = [arr[dex0], arr[dex1]]
    if num1 > num2
      arr[dex0], arr[dex1] = [num2, num1]
      sort_count += 1
    end
    dex0, dex1 = [(dex0 + 1), (dex1 + 1)]
    break if dex1 > arr.length - 1 && sort_count == 0
    dex0, dex1, sort_count = [0, 1, 0] if dex1 > arr.length - 1
  end
  arr
end

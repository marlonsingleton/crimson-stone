arr = [5, 1, 7, 3, 1, 9, 6, 4, 8]

def merge_sort(arr)
  if arr.size <= 1 
    arr 
  else 
    half = arr.size / 2
    side1 = merge_sort(arr[0..(half - 1)])
    side2 = merge_sort(arr[half..-1])
    merge(side1, side2)
  end
end

def merge(side1, side2)
  if side1.empty?
    side2
  elsif side2.empty?
    side1
  elsif side1[0] < side2[0]
    p [side1[0]] + merge(side1[1..-1], side2)
    [side1[0]] + merge(side1[1..-1], side2)
  else
    p [side2[0]] + merge(side2[1..-1], side1)
    [side2[0]] + merge(side2[1..-1], side1)
  end
end

p merge_sort(arr)

def sum_of_sums(arr)
  sum = 0
  arr.each_index { |dex| sum += arr.slice(0..dex).reduce(:+) }
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2)

my_array = ["one", "two", "three", "four", "five"]
skip = 2

def skipping(my_array, skip)
  collection = my_array.each_with_index.map { |item, index| "#{index}: #{item}" }
  collection[skip..-1]
end

p skipping(my_array, skip)


  

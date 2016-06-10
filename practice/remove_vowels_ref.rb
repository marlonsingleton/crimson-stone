def remove_values(the_array)
  the_array.map { |word| word.delete("aeiou") }
end

colors = ["Yellow", "Green", "Blue", "Black", "Red", "Pink", "Orange"]

p remove_values(colors)

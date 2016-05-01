def joinor(the_array, delimiter = ", ", word = "or")
  last = the_array[-1].to_s + " " + word.reverse
  the_array[-1] = last.reverse if the_array.size > 1
  the_array.join(delimiter)
end

# Example
my_array = [1, 2, 3, 4, 5]
p joinor(my_array)

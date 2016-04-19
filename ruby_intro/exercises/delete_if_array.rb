
arr = ["snow", "winter", "ice", "slippery", "salted roads", "white trees"]
p arr
arr.delete_if { |word| word.start_with?("s") || word.start_with?("w") }
puts "Deleted words starting with \"s\" or \"w\" from the array."
p arr

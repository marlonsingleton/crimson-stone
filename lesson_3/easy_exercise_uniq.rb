uniq_numbers = <<-MSG
numbers = [1, 2, 2, 3]
numbers.uniq # Non-destructive method removes duplicate elements

puts numbers # So output remains unchanged...see below 
MSG

puts uniq_numbers

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

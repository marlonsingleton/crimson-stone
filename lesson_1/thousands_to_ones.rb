
def thousands_to_ones
  print "Please enter a 4-digit number: "
  number = gets.chomp.to_i
  thousands = (number / 1000)
  puts "The number in the thousands place is #{thousands.to_s}."
  hundreds = ((number % 1000) / 100)
  puts "The number in the hundreds place is #{hundreds.to_s}." 
  tens = (((number % 1000) % 100) / 10)
  puts "The number in the tens place is #{tens.to_s}."
  ones = (((number % 1000) % 100) % 10)
  puts "The number in the ones place is #{ones.to_s}."
end

#calls code in def thousands_to_ones
thousands_to_ones 

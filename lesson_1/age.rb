
def age
  print "How old are you? "
  your_age = gets.chomp.to_i
  in_10_years = your_age + 10
  puts "In ten years you will be #{in_10_years.to_s}."
  in_20_years = in_10_years + 10
  puts "In twenty years you will be #{in_20_years.to_s}."
  in_30_years = in_20_years + 10
  puts "In thirty years you will be #{in_30_years.to_s}."
  in_40_years = in_30_years + 10
  puts "In fourty years you will be #{in_40_years.to_s}."
end

#calls code in age
age
  

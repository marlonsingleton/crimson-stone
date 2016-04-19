
array1 = { :name=> "Joe", :height=> "6 feet", :sport=> "basketball", :team=> "Pistons" }
puts "
Keys..."
array1.each { |keys, value| p keys }
puts "
Values..."
array1.each { |keys, values| p values}
puts "\n"
array1.each { |keys, values| p "The key is #{keys}: and the value is => #{values}." }
puts "\n"

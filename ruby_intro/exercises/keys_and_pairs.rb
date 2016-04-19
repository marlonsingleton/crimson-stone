
h = {a:1, b:2, c:3, d:4}
p h
puts "The value of key \"b\" is #{h[:b]}"
h[:e] = 5
p h
puts "Hash after removing key,value pairs less than 3.5"
h.delete_if { |key, value| value < 3.5 }
p h

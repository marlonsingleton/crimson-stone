# how each_with_object works!!!

# array object with range of string elements
("a".."c").each_with_object([]) do |element, the_object|
  p the_object.class # returns Array 
  p element.class # returns String
end

puts ""

# hash object with range of fixnum elements
(1..3).each_with_object({}) do |element, the_object|
  p the_object.class # returns Hash
  p element.class # returns Fixnum
end


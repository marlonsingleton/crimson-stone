square = ->(a) { a ** 2 }
plus_one = ->(a) { a + 1 }
into_2 = ->(a) { a * 2 }
adder = ->(a, b) { a + b }
values_only = ->(hsh) { hsh.values } 

#puts square.(a)
#puts plus_one.(a)
#puts into_2.(a)
#puts adder.(a, b)
#p values_only.(hsh)

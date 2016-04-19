
my_array = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

test = "lab"
my_array.each { |word| puts word if word =~ /#{test}/ }


age_array = ['Dave', 7, 'Miranda', 3, 'Jason', 11]
nested_array = []
start_num = 0 
end_num = 1

3.times do
  nested_array << age_array.slice(start_num..end_num)
  start_num += 2 
  end_num += 2 
end 

p nested_array

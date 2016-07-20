def count_occurrences(vehicles)
  keys = vehicles.uniq
  keys.each do |key|
  puts "#{key} => #{vehicles.count(key)}"
  end
end 

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car','truck']

count_occurrences(vehicles)

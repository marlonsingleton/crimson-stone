count = 1

loop do
  count % 2 == 0 ? (puts "#{count} is even!") : (puts "#{count} is odd!")
  count += 1
  break if count == 6 # only prints 1 thru 5
end

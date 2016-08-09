def star(num)
  spaces, stars = [(num - 3) / 2, []]
  (num / 2).times do
    stars << ("*"+ " " * spaces + "*" + " " * spaces + "*")
    spaces += -1
  end
  stars.each { |star| puts star.center(num) }
  puts "*" * num
  stars.reverse.each { |star| puts star.center(num) }
end

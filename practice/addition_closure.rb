def plus_1(y)
  x = 100
  puts x		    # x value inside method block
  y.call        # y's value is calculated outside the method block
end

x = 1
y = -> { x + 5 }
puts plus_1(y)  # see the method in action
puts x

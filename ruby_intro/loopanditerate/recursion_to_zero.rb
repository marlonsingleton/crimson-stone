
def recursion_to_zero(x)
  if x == 0
    puts x
  else
    puts x 
    recursion_to_zero(x - 1)
  end 
end

recursion_to_zero(5)

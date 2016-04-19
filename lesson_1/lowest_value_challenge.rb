

test_array = [23, 550, 1, 80]
results_array = []
test_array.permutation.to_a.each {|perm| 
  if perm.join < test_array.sort.join
    results_array.push(perm.join)
  end        
}
results_array.push(test_array.sort.join)


p results_array.min

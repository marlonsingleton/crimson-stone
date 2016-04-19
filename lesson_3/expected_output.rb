answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer) # new_answer is 50, last line of def block returned and assigned

p answer - 8 # displays 34, 'answer' was not mutated in the block by '+=' thus 42 minus 8

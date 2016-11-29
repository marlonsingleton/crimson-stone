def drome_check(num, pdromes, bound)
  if num.to_s == num.to_s.reverse
    pdromes << num if num < bound
  end
end

def reduce_arr(arr, bound)
  while (arr[-1] + arr[-2]) > bound 
    arr.pop 
  end 
  arr 
end

def sum_seq(pdromes, sum, n, num)
  if pdromes.include?(sum)
    puts "**Sequence and Palindrome**"
    p (n..num).to_a
    p (n..num).map { |n| n ** 2 }.reduce(:+)
    puts
  end
end

def create_arr(n, bound)
  arr = (1..n).map { |n| n ** 2 }
  reduce_arr(arr, bound)
  arr = arr.map { |n| Math::sqrt(n).to_i }
end

def display_dromes(pdromes, doubles)
  puts "#{'-' * 50}"
  puts "Sum of Palindromes: #{pdromes.reduce(:+)}\n\n"
  doubles?(doubles)
  puts "Palindrome Array"
  p pdromes
  return nil
end

def doubles?(doubles)
  if doubles.empty? != true
    puts "Doubles Found"
    p doubles
    puts
  end 
end

puts "Please enter upper bound: "
bound = gets.chomp.to_i
pdromes = []
seq_chk = 0 
n = Math::sqrt(bound).to_i 

arr = create_arr(n, bound)

arr.each do |n|
  sum = n ** 2 
  num = n 
  while sum < bound do 
    num += 1 
    sum += num ** 2 
    drome_check(sum, pdromes, bound)
    sum_seq(pdromes, sum, n, num)
  end
end

doubles = pdromes.select { |n| pdromes.count(n) > 1 } 

display_dromes(pdromes, doubles)

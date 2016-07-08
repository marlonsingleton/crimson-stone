array = (1..100000).to_a

outcome = array.select do |x|
    test_array = []
    (2..x).each do |div|
        test_array << x if x % div == 0
        break if test_array.length > 1
    end
    test_array.length == 1
end

p outcome
 

#!/bin/ruby

#
# Complete the simpleArraySum function below.
#
def simpleArraySum(ar)
    num = 0
    ar.map do |x|
        num = x + num
    end
    return num
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = simpleArraySum ar

fptr.write result
fptr.write "\n"

fptr.close()

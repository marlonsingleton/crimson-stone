#!/bin/ruby

require 'json'
require 'stringio'

# Complete the compareTriplets function below.
def compareTriplets(a, b)
    alice, bob = [0, 0]
    [0, 1, 2].each do |x|
        if a[x] > b[x]
            alice += 1
        elsif a[x] < b[x]
            bob += 1
        end
    end
    return [alice, bob]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()

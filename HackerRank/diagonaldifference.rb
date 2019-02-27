require 'json'
require 'stringio'

# Complete the diagonalDifference function below.
def diagonalDifference(arr)
    loopnum = arr.length
    leftindex, rightindex = [0, loopnum - 1]
    leftarr, rightarr = [[], []]

    arr.each do |x|
        leftarr << x[leftindex]
        rightarr << x[rightindex]
        leftindex += 1
        rightindex -= 1
    end

    leftsum, rightsum = [leftarr.sum, rightarr.sum]

    return (leftsum - rightsum).abs
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()

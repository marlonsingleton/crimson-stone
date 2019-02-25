require 'prime'

def palin(x)
  x == x.to_s.reverse.to_i
end

def primes(x)
  Prime.prime?(x)
end
 
n = gets.to_i
palin_primes = -> (n) do
  1.upto(Float::INFINITY).lazy.select do |x|
    next unless palin(x)
    primes(x)
  end.first(n)
end

p palin_primes.(n)

require 'prime' # evaluates prime really fast

# Largest prime factor of 600851475143
outcome = Prime.prime_division(600851475143).last[0]
p Prime.prime?(outcome) ? "#{outcome} is largest prime factor" : "Try again"


#factorial for 5, 6, 7 and 8.
def factorial
  five_fac = 5 * 4 * 3 * 2 * 1
  six_fac = 6 * five_fac
  seven_fac = 7 * six_fac
  eight_fac = 8 * seven_fac
  puts "  The factorial of 5 is #{five_fac.to_s}.
  The factorial of 6 is #{six_fac.to_s}.
  The factorial of 7 is #{seven_fac.to_s}.
  The factorial of 8 is #{eight_fac.to_s}."
end

#calls the code in factorial
factorial


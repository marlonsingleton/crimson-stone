def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  /^\d*.?\d*$/.match(num).to_s == num
end

def not_zero?(num)
  num.to_i != 0
end

def monthly_interest(apr)
  apr = (apr.to_i * 0.01) if apr.to_i > 0
  apr.to_f / 12
end

def years_to_months(years)
  years.to_i * 12
end

def loan_formula(m_interest, l_duration)
  bracket_1 = m_interest.to_f * (1 + m_interest.to_f)**l_duration.to_i
  bracket_2 = (1 + m_interest.to_f)**l_duration.to_i - 1
  bracket_1.to_f / bracket_2.to_f
end

def prompt2(message)
  Kernel.puts("... #{message}")
end

prompt("'Loan Calculator' Here At Your Service.")

loop do
  loan_amount = ''
  loop do
    prompt("Enter a loan amount: ")
    loan_amount = Kernel.gets().chomp()
    loan_amount = loan_amount.delete("$,,")
    break if valid_number?(loan_amount)
    Kernel.puts("Try again, it looks like you didn't enter a valid number.")
  end

  apr = ''
  loop do
    prompt("Enter the Annual Percentage Rate: ")
    apr = Kernel.gets().chomp()
    apr = apr.delete("%")
    break if valid_number?(apr) && not_zero?(apr)
    Kernel.puts("Oops, try again entering 5 or .05, for example as a 5% APR.")
  end

  month_interest = monthly_interest(apr)

  years = ''
  loop do
    prompt("How many years from now will you repay the loan? ")
    years = Kernel.gets().chomp()
    break if valid_number?(years) && not_zero?(years)
    Kernel.puts("Sorry, please enter a non-zero numerical character for years.")
  end

  loan_duration = years_to_months(years)

  monthly_payment = loan_formula(month_interest, loan_duration) * loan_amount.to_i

  total_payment = monthly_payment.to_f * loan_duration.to_i

  total_interest_paid = total_payment.to_f - loan_amount.to_i
  puts "Results:"
  prompt2("Your monthly interest rate will be #{month_interest.to_f.round(4)}.")
  prompt2("You will pay $#{monthly_payment.to_f.round(2)} a month for the next #{loan_duration} months.")
  prompt2("A whole $#{total_interest_paid.to_f.round(2)} more than the loan you received.")
  prompt2("DISCLAIMER: I hope these numbers are correct, I'm no expert in mathematics or finance.")
  prompt("Do you want to calculate another value? ('y' to continue) or else 'GoodBye!'")
  answer = Kernel.gets().chomp()
  break if answer.casecmp("y") != 0
end

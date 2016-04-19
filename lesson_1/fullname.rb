def fullname
  print "What is your firstname? "
  firstname = gets.chomp
  print "What is your lastname? "
  lastname = gets.chomp
  p "Your fullname is #{firstname.capitalize} #{lastname.capitalize}."
end

#calls name block "def name".
fullname


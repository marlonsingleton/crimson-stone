puts "
hi method called on bob object of the Person class...      
bob = Person.new
bob.hi

Error...
NoMethodError: private method \'hi'\ called for #<Person: 0x007ff61dbb79f0>
from (irb):8
from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

The method you are attempting to access is private and can only be accessed from
within the class.

Fix:
Create a public method that gets the return value of the private method, then 
have your objects access the return value of the public method. 
\n"



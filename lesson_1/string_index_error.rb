names = ['bob', 'joe', 'susan', 'margaret']
puts "
We assigned names the following array... names = ['bob', 'joe', 'susan', 'margaret']"
puts "
This syntax names['margaret'] = 'jody' 
is incorrect and will not replace margaret with jody.
Here's the error message...
TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'"
puts "
Changing the code to names[3] = 'jody' will fix the problem."
names[3] = 'jody'
p names
puts "\n"

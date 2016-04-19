
class Person
  attr_accessor :name
  def initialize(name)
  @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
puts "Steve is no longer this Person object's name; it's now #{bob.name}." 
puts "The undefined method 'name=' occurred because no setter method existed, code fixed using attr_accessor."

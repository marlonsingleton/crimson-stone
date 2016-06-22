class Person
  attr_accessor :full_name
  
  def initialize(full_name)
    @full_name = full_name.split
  end

  def name
    self.full_name.join(" ")
  end
  
  def name=(new_name)
    self.full_name = new_name.split
  end

  def first_name
    self.full_name.first
  end

  def last_name
    if self.full_name.length > 1
      return self.full_name[-1]
    else
      return ""
    end
  end

  def last_name=(l_name)
    if self.full_name.length > 1
      self.full_name[-1] = l_name
    else
      self.full_name << l_name
    end
  end
  
  def to_s
    self.full_name.join(" ")
  end

end

# my testing examples
=begin
bob = Person.new("Robert")
p bob.name
p bob.first_name
p bob.last_name
p bob.last_name = "Smith"
p bob.name
bob.name = "John Adams"
p bob.name
p bob.first_name
p bob.last_name
bob.name = "John Adam Smith"
p bob.name
p bob.first_name
p bob.last_name
p bob.last_name = "Smitty"
p bob.name
bob = Person.new("Robert Smith")
rob = Person.new("Robert Smith")
p bob.name
p rob.name
puts "The person's name is: #{bob}"
=end


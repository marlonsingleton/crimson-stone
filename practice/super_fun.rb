class Pet
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  def initialize(name, age, colors)
    super(name, age)
  @colors = colors
  end
  
  def to_s 
    "My cat #{@name} is #{@age} years old and has #{@colors} fur."
  end
end

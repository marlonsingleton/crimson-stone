class Pet
  def run
    'running!'
  end

  def jump
    'jumping'
  end
end

class Dog < Pet
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

class Cat < Pet
  def speak
    'meow!'
  end
end

teddy = Dog.new
puts teddy.speak
puts teddy.swim
oscar = Bulldog.new
puts oscar.speak
puts oscar.swim
kitty = Cat.new
puts kitty.speak
puts kitty.run
puts kitty.jump
p Pet.ancestors
p Dog.ancestors
p Cat.ancestors
p Bulldog.ancestors

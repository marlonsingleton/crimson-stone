class Pet 
  attr_reader :animal, :name
  def initialize(animal, name)
    @animal = animal 
    @name = name 
  end 
end

class Owner
  attr_reader :name
  attr_accessor :number_of_pets
  $owners = []
  def initialize(name)
    @name = name
    $owners << name
    @number_of_pets = 0
  end
end

class Shelter
  $shelter_list = []
  def adopt(owner, pet)
    @owner = owner
    @pet = pet
    $shelter_list << {@owner => @pet}
  end
    
  def print_adoptions
    $owners.each do |owner|
      puts "#{owner} has adopted the following pets:"
      $shelter_list.select { |item| owner == item.keys[0].name }.each do |pet|
        puts "a #{pet.values[0].animal} named #{pet.values[0].name}"
        pet.keys[0].number_of_pets += 1
      end
      puts ""
    end
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')
shelter = Shelter.new 
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."


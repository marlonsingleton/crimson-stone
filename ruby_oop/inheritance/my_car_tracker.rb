class Vehicle
  @@tracker = 0

  def rolls
    puts "Let\'s Roll!"
  end

  def self.total
    @@tracker
  end

end

class MyCar < Vehicle
  attr_accessor :color, :speed, :year, :model, :miles_per_gal 
  attr_reader :status
  STATUS = "used"

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @miles_per_gal = 27
    @status = STATUS
    @@tracker += 1
  end

  def speed_up(option = 1)
    puts "Go faster!!!"
    self.speed += 5
    self.speed = self.speed * option
  end

  def brake
    puts "Hit the Brakes!"
  end

  def shut_off
    puts "Remove the keys from the ignition."
  end
  
  def spray_paint(new_color)
    self.color = new_color
  end

  def miles_til_empty(gallons = 0)
    if gallons <= 5
      puts "Warning! Gas tank low!!!"
    end
      puts "You have #{self.miles_per_gal * gallons} miles left before you'll need gas." 
  end
     
end

first_car = MyCar.new(2015, "Black", "Nissan")
second_car = MyCar.new(1965, "Blue", "Chevy")
third_car = MyCar.new(1973, "White", "Cadillac")
puts "I now have a total of \'#{Vehicle.total}\' cars in my digital garage."

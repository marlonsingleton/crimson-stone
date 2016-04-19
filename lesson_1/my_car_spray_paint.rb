
class MyCar
  attr_accessor :color, :speed, :year, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
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
     
end

first_car = MyCar.new(2015, "Black", "Nissan")
puts first_car.speed
puts first_car.year
puts first_car.color
puts first_car.model
puts first_car.speed_up
puts first_car.speed_up
puts first_car.speed_up(5)
puts first_car.spray_paint("Orange")
puts "My #{first_car.year} #{first_car.model} is now #{first_car.color} and going #{first_car.speed} MPH!"

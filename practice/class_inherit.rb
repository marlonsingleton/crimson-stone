class Vehilce
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def wheels
    4
  end

  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehilce; end 
  
class Motorcycle < Vehilce
  def wheels
    2
  end
end

class Truck < Vehilce
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end
  
  def to_s 
    super + " #{@payload}"
  end
end

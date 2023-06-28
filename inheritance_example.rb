class Vehicle
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def initialize
    super
    @fuel = "gas"
    @make = "Toyota"
    @model = "86"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize
    super
    @type = "BMX"
    @weight = "20"
  end

  def ring_bell
    puts "Ring ring!"
  end
end

Toyota = Car.new
Toyota.accelerate
Toyota.honk_horn

Schwin = Bike.new
Schwin.accelerate
Schwin.ring_bell

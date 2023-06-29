module Initializable
  def initialize
    @speed = 0
    @direction = "north"
  end
end

module Breaking
  def brake
    @speed = 0
  end
end

module Accelerating
  def accelerate
    @speed += 10
  end
end

module Turning
  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include Initializable
  include Breaking
  include Accelerating
  include Turning

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Initializable
  include Breaking
  include Accelerating
  include Turning

  def ring_bell
    puts "Ring ring!"
  end
end

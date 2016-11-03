module Actions
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

class Vehicle

  def initialize
    @speed = 0
    @direction = 'north'
  end
end

class Car < Vehicle
  attr_reader :gas_level, :make

  def initialize
    super
    @gas_level = 10
    @make = 'Honda'
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle


  def initialize
    super
    @type = 'mountain'
    @weight = 10
  end

  def ring_bell
    puts "Ring ring!"
  end

end

honda = Car.new
puts honda.accelerate
honda.honk_horn
puts honda.make

bike = Bike.new 
puts bike.accelerate
bike.ring_bell

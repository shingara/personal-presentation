puts nil.class # NilClass

class Car
  def initialize(door)
    @door = door
  end

  def door
    @door
  end
end

class Bus < Car
  def driver
    true
  end
end

bus = Bus.new(3)
puts bus.door     # 3
puts bus.driver  # true

car = Car.new(3)
puts car.door      # 3
puts car.driver    # NoMethodError

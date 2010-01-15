puts nil.class # NilClass

class Car
  def initialize(door)
    @door = door
  end

  def door
    @door
  end
end

class AutoCar < Car
  def chauffeur
    true
  end
end

autocar = AutoCar.new(3)
puts autocar.door     # 3
puts autocar.chauffeur # true

car = Car.new(3)
puts car.door      # 3
puts car.chauffeur # NoMethodError

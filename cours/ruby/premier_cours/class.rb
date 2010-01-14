puts nil.class # NilClass

class Car
  def door
    3
  end
end

class AutoCar < Car
  def chauffeur
    true
  end
end

autocar = AutoCar.new
puts autocar.door     # 3
puts autocar.chauffeur # true

car = Car.new
puts car.door      # 3
puts car.chauffeur # NoMethodError

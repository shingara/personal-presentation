require 'car'
require 'test/unit'
require 'test_car_10'

class ParkingTest < Test::Unit::TestCase

  def setup
    @car1 = Car.new
    @car2 = Car.new
    @car3 = Car.new
  end

  def test_add_cars
    park = Parking.new(2)
    assert_equal [],park.cars
    park << @car1
    assert_equal [@car1], park.cars
    park << @car2
    assert_equal [@car1, @car2], park.cars
    assert !(park << @car3)
    assert_equal [@car1, @car2], park.cars
    park.out(@car2)
    assert_equal [@car1], park.cars
    assert !(park << @car1)
    assert_equal [@car1], park.cars
  end

end

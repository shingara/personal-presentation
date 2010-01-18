require 'car'
require 'test/unit'
require 'test_car_5'

class CarTest < Test::Unit::TestCase

  def test_nb_car
    nb_car = Car.nb_car
    Car.new
    assert_equal nb_car + 1, Car.nb_car
    Car.new
    assert_equal nb_car + 2, Car.nb_car
    Car.new
    Car.new
    assert_equal nb_car + 4, Car.nb_car
  end
end

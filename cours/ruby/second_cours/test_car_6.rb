require 'car'
require 'test/unit'

class CarTest < Test::Unit::TestCase

  def test_nb_car
    Car.new
    assert_equal 1, Car.nb_car
    Car.new
    assert_equal 2, Car.nb_car
    Car.new
    Car.new
    assert_equal 4, Car.nb_car
  end
end

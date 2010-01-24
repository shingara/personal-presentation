require 'car'
require 'test/unit'
require 'test_car_11'

class IntegerTest < Test::Unit::TestCase

  def test_generate_car
    cars = 3.cars
    assert_equal 3, cars.size
    assert_kind_of Car, cars.first
  end

end

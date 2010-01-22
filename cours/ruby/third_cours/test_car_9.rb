require 'car'
require 'test/unit'
require 'test_car_8'

class CarTest < Test::Unit::TestCase

  def test_passenger
    car = Car.new
    car.passenger('foo')
    assert_equal 'foo', car.first_passenger
    assert_equal nil, car.second_passenger
    car.passenger('bar', 'baz')
    assert_equal 'bar', car.first_passenger
    assert_equal 'baz', car.second_passenger
  end

end

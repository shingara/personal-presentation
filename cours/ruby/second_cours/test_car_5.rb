require 'car'
require 'test/unit'

class CarTest < Test::Unit::TestCase

  def test_initialize
    car = Car.new(3)
    assert_equal 3, car.nb_stop
    car.run
    car.stop
    assert_equal 4, car.nb_stop
  end
end

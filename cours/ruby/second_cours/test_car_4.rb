require 'car'
require 'test/unit'

class CarTest < Test::Unit::TestCase

  def setup
    @car = Car.new
  end

  def test_nb_stop
    @car.run
    @car.stop
    assert_equal 1, @car.nb_stop
    @car.run
    @car.stop
    assert_equal 2, @car.nb_stop
  end
end

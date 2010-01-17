require 'car'
require 'test/unit'

class CarTest < Test::Unit::TestCase

  def setup
    @car = Car.new
  end

  def test_stop
    @car.run
    @car.stop
    assert !@car.running?
  end
end

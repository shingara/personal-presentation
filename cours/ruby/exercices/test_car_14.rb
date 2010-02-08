require 'test_car_13'

class TestCar < Test::Unit::TestCase
  def test_exception
    assert_raise ArgumentError do
      car = Car.new('hello')
    end
  end
end

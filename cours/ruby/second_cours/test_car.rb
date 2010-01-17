require 'car'
require 'test/unit'

class CarTest < Test::Unit::TestCase

  def setup
    @car = Car.new(1)
  end

  def test_init
    assert !@car.running?
    assert_equal 1, @car.nb_stop
  end

  def test_run
    @car.run
    assert @car.running?
    assert_equal 1, @car.nb_stop
  end

  def test_stop
    @car.run
    @car.stop
    assert !@car.running?
    assert_equal 2, @car.nb_stop
    @car.stop
    assert_equal 2, @car.nb_stop
  end

  def test_nb_car
    nb_car = Car.nb_car
    car = Car.new
    assert_equal nb_car + 1 , Car.nb_car
  end

end

require 'test_car_14'

class CarTest < Test::Unit::TestCase
  def test_run_block
    car = Car.new
    car.run do |c|
      assert c.running?
    end
    assert !car.running?
  end
end

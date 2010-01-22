require 'car'
require 'test/unit'
require 'test_car_9'

class FordTest < Test::Unit::TestCase

  def test_run
    ford = Ford.new
    assert !ford.running?
    assert_equal 'boom', ford.run
    assert ford.running?
  end

end

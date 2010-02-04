require 'car'
require 'test_car_12'

class ParkingTest < Test::Unit::TestCase

  def test_create_parking
    parkings = {'leon' => 12, 'python' => 42}.generate_parkings
    assert_equal 2, parkings.size
    assert_equal 'leon', parkings.sort_by{|pa| pa.name}[0].name
    assert_equal 12, parkings.sort_by{|pa| pa.name}[0].max_size
    assert_equal 'python', parkings.sort_by{|pa| pa.name}[1].name
    assert_equal 42, parkings.sort_by{|pa| pa.name}[1].max_size
  end

end

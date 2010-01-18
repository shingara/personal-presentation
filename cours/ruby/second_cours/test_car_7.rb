require 'car'
require 'test/unit'
require 'test_car_6'

class FordTest < Test::Unit::TestCase

  def test_ford
    ford = Ford.new
    assert_equal 'Ford', ford.marque
  end
end

class RenaultTest < Test::Unit::TestCase

  def test_renault
    renault = Renault.new
    assert_equal 'Renault', renault.marque
  end
end

require 'car'
require 'test/unit'
require 'test_car_7'

class FordTest < Test::Unit::TestCase

  def test_module_driver
    assert Ford.ancestors.include? Driver
  end

  def test_add_driver
    f = Ford.new
    assert !f.has_driver?
    f.add_driver
    assert f.has_driver?
  end
end

class RenaultTest < Test::Unit::TestCase

  def test_renault
    assert Renault.ancestors.include? Driver
  end

  def test_add_driver
    r = Renault.new
    assert !r.has_driver?
    r.add_driver
    assert r.has_driver?
  end
end

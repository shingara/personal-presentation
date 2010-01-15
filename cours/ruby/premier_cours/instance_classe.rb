class Car
  def initialize(door, trunk)
    @door = door
    @trunk = trunk
  end

  def door
    @door + @trunk
  end

  def self.big
    self.new(4,1)
  end
end

c = Car.big
c.door # 5

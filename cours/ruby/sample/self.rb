class Car

  def door(nb)
    @wheel = nb
  end

  def me
    self
  end

end

c = Car.new
c.door(4)
puts c.me # self
puts c # self
puts c == c.me # true

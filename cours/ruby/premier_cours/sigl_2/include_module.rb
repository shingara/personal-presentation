module Automatic
  def open
    'open'
  end

  def close
    'close'
  end
end

class Door
  include Automatic
end

door = Door.new
puts door.open # open
puts door.close # close

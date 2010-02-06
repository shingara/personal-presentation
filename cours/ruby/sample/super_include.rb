module Automatic
  def open
    puts 'open'
  end

  def to_yaml
    puts 'I am in automatic'
    super
  end

  def close
    puts 'close'
  end
end

module Outch
  def open
    super
    puts 'hihi'
  end

  def to_yaml
    puts 'I am in Outch'
    super
  end
end

class Tree
  def to_yaml
    puts 'I am in tree'
    super
  end
end

class Door < Tree
  include Automatic
  include Outch

  def open
    super
  end
end

door = Door.new
door.open
door.close
p door.to_yaml





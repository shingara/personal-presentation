module Driver

  def has_driver?
    @has_driver
  end

  def add_driver
    @has_driver = true
  end

end

class Fixnum
  def cars
    acc = []
    self.times{|v|
      acc << Car.new
    }
    acc
  end
end

class Hash
  def generate_parkings
    parks = []
    self.each { |k,v|
      parks << Parking.new(v,k)
    }
    parks
  end
end

class Parking < Array
  attr_reader :name
  attr_reader :max_size
  def initialize(max_cars, name='')
    @max_size = max_cars
    @name = name
  end

  def cars
    self
  end

  def <<(car)
    if size < @max_size &&
      !include?(car)
      super car
    end
  end

  def out(car)
    delete(car)
  end

end

class Car

  attr_reader :nb_stop, :marque

  include Driver

  def initialize(nb=0)
    @nb_stop = nb
    @@nb_car ||= 0
    @@nb_car += 1
    @marque = self.class.to_s
  end

  def running?
    @running
  end

  def run
    @running = true
  end

  def stop
    @running = false
    @nb_stop += 1
  end

  def self.nb_car
    @@nb_car
  end

  attr_reader :first_passenger
  attr_reader :second_passenger
  def passenger(first, second=nil)
   @first_passenger = first
   @second_passenger = second
  end

end

class Ford < Car
  def run
    super
    'boom'
  end
end

class Renault < Car
end


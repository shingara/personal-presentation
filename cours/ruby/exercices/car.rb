
class Car

  attr_reader :nb_stop
  attr_reader :first_passenger, :second_passenger

  def initialize(nb_running=0)
    @nb_stop = nb_running
    self.class.add_car
  end

  def running?
    @run == true
  end

  def run
    @run = true
    if block_given?
      yield self
      @run = false
    end
  end

  def stop
    @nb_stop += 1 if running?
    @run = false
  end

  def passenger(first, second=nil)
    @first_passenger = first
    @second_passenger = second
  end

  class << self
    def nb_car
      @@nb_car
    end

    def add_car
      @@nb_car ||= 0
      @@nb_car += 1
    end
  end

end

module Driver
  def add_driver
    @driver = true
  end

  def has_driver?
    @driver
  end
end

class Ford < Car
  include Driver
  def marque
    'Ford'
  end

  def run
    super
    'boom'
  end
end

class Renault < Car
  include Driver
  def marque
    'Renault'
  end
end

class Parking < Array

  attr_accessor :cars
  attr_reader :max_size, :name

  def initialize(nb_max_car, name='park_1')
    @max_size = nb_max_car
    @cars = []
    @name = name
  end

  def <<(car)
    @cars << car if @max_size > @cars.size && !@cars.include?(car)
  end

  def out(car)
    @cars.delete_if{|c| c == car}
  end

end

class Integer
  def cars
    cars = []
    self.times do |c|
      cars << Car.new
    end
    cars
  end
end

class Hash
  def generate_parkings
    parks = []
    self.each do |k,v|
      parks << Parking.new(v, k)
    end
    parks
  end
end


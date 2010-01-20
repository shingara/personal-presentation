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

class Integer
  def cars
    cars = []
    self.times do |c|
      cars << Car.new
    end
    cars
  end
end

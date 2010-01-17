class Car

  attr_reader :nb_stop

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

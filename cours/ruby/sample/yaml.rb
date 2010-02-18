require 'yaml'

class Car
  def initialize(name)
    @name = name
  end
  attr_reader :name
end

foo = Car.new('hello')
File.open('yaml.yaml', 'w+') do |f|
  YAML.dump(foo, f)
end
ok = YAML.load_file('yaml.yaml')
p ok
p ok.name

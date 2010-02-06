module Hello
  def say
    'hello'
  end
end

class Person
  extend Hello
  include Hello
end

puts Person.say # hello
person = Person.new
puts person.say



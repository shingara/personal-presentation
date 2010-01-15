module Hello
  def say
    'hello'
  end
end

class Person
  extend Hello
end

puts Person.say # hello

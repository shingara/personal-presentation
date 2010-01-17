class Hello
  def say(who)
    puts "hello #{who}"
  end
end

class Bye < Hello
  def say
    super
    puts 'bye'
  end
end


h = Hello.new
h.say('hi')

b = Bye.new
b.say





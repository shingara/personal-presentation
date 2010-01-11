foo = 'bar'
$foo = 'baz'

HELLO = 'foo'

puts foo # bar
puts $foo # baz
puts HELLO # foo

class Hello

  def self.bar(foo)
    @@foo = foo
  end

  def self.baz
    @@foo
  end
end

Hello.bar('bar')
puts Hello.baz # baz

class Hello

  def bar(foo)
    @foo = foo
  end

  def baz
    @foo
  end
end



hello = Hello.new
hello.bar('baz')
puts hello.baz # baz


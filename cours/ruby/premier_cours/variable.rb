foo = 'bar'
$foo = 'baz'

HELLO = 'foo'

puts foo # bar
puts $foo # baz
puts HELLO # foo

class Hello

  class << self
    def bar(foo)
      @@foo = foo
    end

    def baz
      @@foo
    end
  end
end

Hello.bar('bar')
puts Hello.baz # baz

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

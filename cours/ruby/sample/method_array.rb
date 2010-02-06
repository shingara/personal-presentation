foo = ['bar', 'baz']
foo.each do |f|
  puts f
end

# bar
# baz

puts foo.include? 'bar' # true

new_foo = foo.map do |f|
  "foo#{f}bar"
end
p foo # ["foobarbar", "foobazbar"]
p new_foo

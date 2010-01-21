foo = []
bar = [1, Object.new, 'baz', 1.0]

puts bar[0] # 1
puts bar[2] # baz

for b in bar
  puts b
end

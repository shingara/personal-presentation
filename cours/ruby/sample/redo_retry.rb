y = 0
for x in (1..10)
  y += 1
  puts "Before : I am the #{y} call : #{x}"
  if y == 8
    redo
  end
  puts "I am the #{y} call : #{x}"
end
puts 'retry'
y = 0
for x in (1..10)
  y += 1
  if y == 8
    retry
  end
  puts "I am the #{y} call"
end

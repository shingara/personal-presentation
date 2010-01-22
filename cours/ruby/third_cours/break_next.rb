for x in (1..10)
  if x == 8
    break
  end
  if x % 2 == 0
    next
  end
  puts "I am the #{x} call"
  x -= 1
end

def block_method_with_arg
  puts 'hello'
  yield 'fine'
  puts 'bye'
end

block_method_with_arg {|who|
  puts who
}

# hello
# fine
# bye

def block_method
  puts 'hello'
  yield
  puts 'bye'
end

block_method {
  puts 'inside'
}

# hello
# inside
# bye

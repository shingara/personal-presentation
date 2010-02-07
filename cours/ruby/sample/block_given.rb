def my_methods
  puts 'first'
  if block_given?
    yield
  else
    puts 'no block send'
  end
  puts 'last'
end

my_methods
my_methods do
  puts 'ok'
end

# first
# no block send
# last
# first
# ok
# last

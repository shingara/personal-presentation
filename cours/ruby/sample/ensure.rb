
def ensure_it
  puts 'hello'
  raise ArgumentError
  puts 'I am here ?'
ensure
  puts 'mandatory'
end

ensure_it
# hello
# mandatory

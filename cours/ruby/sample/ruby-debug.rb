require 'ruby-debug'

def hello
  puts 'first'
  debugger
  puts 'second'
end

hello

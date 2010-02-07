def my_method(argument=false)
  foo = 'yahoo'
  if argument
    raise ArgumentError.new
  else
    raise Exception.new
  end
rescue ArgumentError
  puts 'catch argument error'
rescue Exception => e
  puts "catch exception #{e}"
end

my_method # catch exception Exception
my_method(true) # catch argument error

def my_method
  foo = 'bar'
  begin
    puts foo
    raise Exception.new
  rescue
    puts 'catch rescue'
  end
end

def my_other_method
  foo = 'bar'
  puts foo
  raise Exception.new
rescue
  puts 'catch rescue'
end

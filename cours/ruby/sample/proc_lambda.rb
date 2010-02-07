my_method = Proc.new {
  puts 'hello'
}

my_method.call # hello


my_method_with_args = Proc.new { |str|
  puts str
}

my_method_with_args.call('hi') # hi


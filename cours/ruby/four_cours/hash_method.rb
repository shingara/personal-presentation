my_hash = {:foo => 'bar', :baz => 'hello'}
my_hash.each { |k, v|
  puts "key : #{k}"
  puts "value : #{v}"
}

p my_hash.keys # [:foo, :baz]

my_hash.key? :foo # true
my_hash.key? :bar # false

my_hash.each_value do |v|
  puts "value : #{v}"
end

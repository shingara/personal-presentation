my_hash = { :key => 'foo', :bar => 'baz' }
other = { 1 => 'foo', 'bar' => 3, Object.new => 'baz' }
puts my_hash[:key] # foo
puts other[1] # foo

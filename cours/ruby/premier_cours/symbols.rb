puts "string".object_id
puts "string".object_id
puts :symbol.object_id
puts :symbol.object_id

puts :symbol.object_id == :symbol.object_id # true
puts "ruby".object_id == "ruby".object_id # false

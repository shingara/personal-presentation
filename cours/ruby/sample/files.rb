File.open('my_file.txt', 'w+') do |f|
  f.puts 'hello'
end

puts File.read('my_file.txt')
FileUtils.rm('my_file.txt')

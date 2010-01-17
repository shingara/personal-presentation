def hello
  puts 'hello'
end

hello    # hello
hello()  # hello

def hello(name)
  puts "hello #{name}"
end

hello 'Cyril' # hello Cyril
hello('Mougel') # hello Mougel

def hello(firstname, lastname="")
  puts "Hello #{firstname} #{lastname}"
end

hello 'Cyril'            # hello Cyril
hello 'Cyril', 'Mougel'  # hello Cyril Mougel

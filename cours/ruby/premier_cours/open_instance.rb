obj = Object.new

def obj.show
  'moi'
end

puts obj.show # moi

o = Object.new
o.show # NoMethodError

obj = Object.new

def obj.show
  'me'
end

puts obj.show # me

o = Object.new
o.show # NoMethodError

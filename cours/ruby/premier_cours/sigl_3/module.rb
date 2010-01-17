module Garage

  def self.construct
    'made'
  end

  def self.destroy
    'go out'
  end

end

def construct
  'what ?'
end

puts Garage::construct # made
puts Garage::destroy   # go out
puts construct         # what ?

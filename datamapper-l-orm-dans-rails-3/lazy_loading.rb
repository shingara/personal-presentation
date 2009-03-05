class Animal
  include DataMapper::Resource
  property :id, Serial
  property :name, String #:lazy => false
  property :notes, Text #:lazy => true
end

animals = Animal.all  # No request
animals.each do |pet| # SELECT id,name FROM Animals
  pet.notes # SELECT notes FROM Animals WHERE id = x
  pet.name # No more request
end

class User
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :age, Integer

  has :n, :projects
  belongs_to :group
end

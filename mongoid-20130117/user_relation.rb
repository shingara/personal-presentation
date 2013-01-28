class User
  include Mongoid::Document

  has_many :posts
end

class Post
  include Mongoid::Document

  belongs_to :user
end

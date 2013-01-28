class Post
  include Mongoid::Document

  embeds_many :comments
end

class Comment
  include Mongoid::Document

  embedded_in :post
end

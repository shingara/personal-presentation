class User < ActiveRecord::Base
  has_many :products 

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_format_of :email, 
    :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, 
    :on => :create
end

class Product < ActiveRecord::Base
  belongs_to :user
end

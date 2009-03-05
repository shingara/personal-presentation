require 'dm-validations'

class Account
  include DataMapper::Resource

  property :name,  String
  property :content, Text, :length => (100..500)
  property :email, String, :nullable => false, :unique => true, :format => :email_address,
                         :messages => {
                           :presence => "need email",
                           :is_unique => "already used",
                           :format => "not a email"
                         }

  validates_length :name, :max => 20

end

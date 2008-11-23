class Project < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_uniqueness_of :title
end

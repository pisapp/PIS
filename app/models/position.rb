class Position < ActiveRecord::Base
  # Relationship
  has_many    :users
  
  # Validation
  validates_presence_of :name
  validates_uniqueness_of :name
end

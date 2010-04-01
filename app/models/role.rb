class Role < ActiveRecord::Base
  # Relationship
  has_many    :user_roles,
              :dependent => :destroy
              
  # Validation
  validates_presence_of :name
  validates_uniqueness_of :name              
end

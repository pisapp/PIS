class UserRole < ActiveRecord::Base
  # Relationship
  belongs_to  :user
  belongs_to  :role
end

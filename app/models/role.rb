class Role < ActiveRecord::Base
  # Relationship
  has_many    :user_roles,
              :dependent => :destroy
end

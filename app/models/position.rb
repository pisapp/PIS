class Position < ActiveRecord::Base
  # Relationship
  has_many    :users
end

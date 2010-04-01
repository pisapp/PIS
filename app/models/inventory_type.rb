class InventoryType < ActiveRecord::Base
  # Relationship
  has_many    :inventories
  
  # Validation
  validates_presence_of :name
  validates_uniqueness_of :name
end

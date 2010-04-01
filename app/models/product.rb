class Product < ActiveRecord::Base
  # Relationship
  has_many    :inventory_details,
              :class_name => "InventoryDetail",
              :foreign_key => "storage_id"
  has_many    :product_exchanges         
  
  # Validation
  validates_presence_of :code, :name
  validates_uniqueness_of :code
end

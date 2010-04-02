class Inventory < ActiveRecord::Base
  # Relationship
  belongs_to    :inventory_type
  belongs_to    :manager,
                :class_name => "User",
                :foreign_key => "user_id"
  has_many      :material_exchanges
  has_many      :semi_product_exchanges
  has_many      :product_exchanges
  has_many      :inventory_details
  
  # Validation
  validates_presence_of :code, :name, :address
  validates_uniqueness_of :code
end

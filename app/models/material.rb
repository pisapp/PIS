class Material < ActiveRecord::Base
  # Relationship
  belongs_to  :material_type
  has_many    :inventory_details,
              :class_name => "InventoryDetail",
              :foreign_key => "storage_id"
  has_many    :material_exchanges              
end

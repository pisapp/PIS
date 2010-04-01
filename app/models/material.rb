class Material < ActiveRecord::Base
  # Relationship
  belongs_to  :material_type
  has_many    :inventory_details,
              :class_name => "InventoryDetail",
              :foreign_key => "storage_id"
  has_many    :material_exchanges     
  
  # Validation
  validates_presence_of :code, :name
  validates_uniqueness_of :code
end

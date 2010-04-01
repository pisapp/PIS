class InventoryDetail < ActiveRecord::Base
  # Relationship
  belongs_to  :material,
              :class_name => "Material",
              :foreign_key => "storage_id"
  belongs_to  :semi_product,
              :class_name => "SemiProduct",
              :foreign_key => "storage_id"
  belongs_to  :products,
              :class_name => "Product",
              :foreign_key => "storage_id"              
end

class SemiProduct < ActiveRecord::Base
  # Relationshop
  has_many    :inventory_details,
              :class_name => "InventoryDetail",
              :foreign_key => "storage_id"
  has_many    :semi_product_exchanges              
end

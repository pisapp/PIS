class ProductExchange < ActiveRecord::Base
  # Relationship
  belongs_to    :creator,
                :class_name => "User",
                :foreign_key => "created_by"
  belongs_to    :quantity_unit             
  belongs_to    :product
  belongs_to    :inventory
end

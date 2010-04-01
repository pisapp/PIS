class SemiProductExchange < ActiveRecord::Base
  # Relationship
  belongs_to    :creator,
                :class_name => "User",
                :foreign_key => "created_by"
  belongs_to    :weight_unit      
  belongs_to    :semi_product
  belongs_to    :inventory
end

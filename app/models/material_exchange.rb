class MaterialExchange < ActiveRecord::Base
  # Relationship
  belongs_to    :creator,
                :class_name => "User",
                :foreign_key => "created_by"
  belongs_to    :weight_unit      
  belongs_to    :inventory
  belongs_to    :material
end

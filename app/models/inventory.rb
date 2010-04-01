class Inventory < ActiveRecord::Base
  # Relationship
  belongs_to    :manager,
                :class_name => "User",
                :foreign_key => "user_id"
  has_many      :material_exchanges
  has_many      :semi_product_exchanges
  has_many      :product_exchanges
end

class WeightUnit < ActiveRecord::Base
  # Relationship
  has_many    :material_exchanges
  has_many    :semi_product_exchanges
end

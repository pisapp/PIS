class WeightUnit < ActiveRecord::Base
  # Relationship
  has_many    :material_exchanges
  has_many    :semi_product_exchanges
  
  # Validation
  validates_presence_of :name
  validates_uniqueness_of :name
end

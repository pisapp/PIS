class QuantityUnit < ActiveRecord::Base
  # Relationship
  has_many    :product_exchanges
  
  # Validation
  validates_presence_of :name
  validates_uniqueness_of :name
end

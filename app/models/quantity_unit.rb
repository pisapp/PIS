class QuantityUnit < ActiveRecord::Base
  # Relationship
  has_many    :product_exchanges
end

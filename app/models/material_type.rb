class MaterialType < ActiveRecord::Base
  # Relationship
  has_many    :materials
  
  # Validation
  validates_presence_of :code, :name
  validates_uniqueness_of :code
end

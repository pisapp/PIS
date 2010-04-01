class User < ActiveRecord::Base
  # Relationship
  has_many    :user_roles,
              :dependent => :destroy
  belongs_to  :position
  has_many    :inventories,
              :class_name => "Inventory",
              :foreign_key => "user_id"
  has_many    :material_exchange,
              :class_name => "MaterialExchange",
              :foreign_key => "created_by"
  has_many    :semi_product_exchange,
              :class_name => "SemiProductExchange",
              :foreign_key => "created_by"
  has_many    :product_exchange,
              :class_name => "ProductExchange",
              :foreign_key => "created_by"    
  
  # Validation
  validates_presence_of :username, :fullname, :email
  validates_uniqueness_of :username                
end

class ActivityTracking < ActiveRecord::Base
  # Relationship
  belongs_to    :user
  belongs_to    :material_exchange,
                :class_name => "MaterialExchange",
                :foreign_key => "item_id"
  belongs_to    :semi_product_exchange,
                :class_name => "SemiProductExchange",
                :foreign_key => "item_id"
  belongs_to    :product_exchange,
                :class_name => "ProductExchange",
                :foreign_key => "item_id"        
                
  def action_type
    return self.action == 0 ? "thêm mới" :
           self.action == 1 ? "cập nhật" :
           self.action == 2 ? "xóa bỏ" :
           "thao tác"
  end
  
  def action_to
    return self.item_type == 0 ? "nguyên liệu" :
           self.item_type == 1 ? "bán thành phẩm" :
           self.item_type == 2 ? "thành phẩm" :
           "khác"
  end
end

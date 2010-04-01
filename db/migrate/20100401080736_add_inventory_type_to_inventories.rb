class AddInventoryTypeToInventories < ActiveRecord::Migration
  def self.up
    add_column :inventories, :inventory_type_id, :integer
  end

  def self.down
    remove_column :inventories, :inventory_type_id
  end
end

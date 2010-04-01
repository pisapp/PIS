class CreateInventoryDetails < ActiveRecord::Migration
  def self.up
    create_table :inventory_details do |t|
      t.integer :inventory_id
      t.integer :storage_type
      t.integer :storage_id
      t.integer :size
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :inventory_details
  end
end

class CreateInventoryTypes < ActiveRecord::Migration
  def self.up
    create_table :inventory_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :inventory_types
  end
end

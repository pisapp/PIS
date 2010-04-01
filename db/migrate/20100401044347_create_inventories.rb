class CreateInventories < ActiveRecord::Migration
  def self.up
    create_table :inventories do |t|
      t.string :code
      t.string :name
      t.integer :user_id
      t.string :address
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :inventories
  end
end

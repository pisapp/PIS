class CreateSemiProducts < ActiveRecord::Migration
  def self.up
    create_table :semi_products do |t|
      t.string :code
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :semi_products
  end
end

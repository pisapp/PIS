class CreateSemiProductExchanges < ActiveRecord::Migration
  def self.up
    create_table :semi_product_exchanges do |t|
      t.integer :type
      t.integer :inventory_id
      t.integer :semi_product_id
      t.integer :weight_unit_id
      t.integer :size
      t.text :reason
      t.datetime :created_date
      t.integer :created_by
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :semi_product_exchanges
  end
end

class CreateWeightUnits < ActiveRecord::Migration
  def self.up
    create_table :weight_units do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :weight_units
  end
end

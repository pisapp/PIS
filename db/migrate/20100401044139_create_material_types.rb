class CreateMaterialTypes < ActiveRecord::Migration
  def self.up
    create_table :material_types do |t|
      t.string :code
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :material_types
  end
end

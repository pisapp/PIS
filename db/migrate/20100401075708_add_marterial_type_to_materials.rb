class AddMarterialTypeToMaterials < ActiveRecord::Migration
  def self.up
    add_column :materials, :material_type_id, :integer
  end

  def self.down
    remove_column :materials, :material_type_id
  end
end

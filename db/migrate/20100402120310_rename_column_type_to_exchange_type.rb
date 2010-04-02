class RenameColumnTypeToExchangeType < ActiveRecord::Migration
  def self.up
    rename_column :material_exchanges, :type, :exchange_type
    rename_column :semi_product_exchanges, :type, :exchange_type
    rename_column :product_exchanges, :type, :exchange_type
  end

  def self.down
    rename_column :material_exchanges, :exchange_type, :type
    rename_column :semi_product_exchanges, :exchange_type, :type
    rename_column :product_exchanges, :exchange_type, :type
  end
end

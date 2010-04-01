class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :hash_password
      t.string :salt
      t.string :fullname
      t.integer :position_id
      t.boolean :sex
      t.string :email
      t.boolean :is_admin
      t.boolean :is_blocked
      t.boolean :can_not_delete
      t.string :mobile_phone
      t.text :address
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end

class CreateActivityTrackings < ActiveRecord::Migration
  def self.up
    create_table :activity_trackings do |t|
      t.integer :user_id
      t.integer :action
      t.integer :item_type
      t.integer :item_id
      t.datetime :created_date

      t.timestamps
    end
  end

  def self.down
    drop_table :activity_trackings
  end
end

# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100401080736) do

  create_table "inventories", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "user_id"
    t.string   "address"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "inventory_type_id"
  end

  create_table "inventory_details", :force => true do |t|
    t.integer  "inventory_id"
    t.integer  "storage_type"
    t.integer  "storage_id"
    t.integer  "size"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventory_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "material_exchanges", :force => true do |t|
    t.integer  "type"
    t.integer  "inventory_id"
    t.integer  "material_id"
    t.integer  "weight_unit_id"
    t.integer  "size"
    t.text     "reason"
    t.datetime "created_date"
    t.integer  "created_by"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "material_types", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "material_type_id"
  end

  create_table "positions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_exchanges", :force => true do |t|
    t.integer  "type"
    t.integer  "inventory_id"
    t.integer  "product_id"
    t.integer  "quantity_unit_id"
    t.integer  "size"
    t.text     "reason"
    t.datetime "created_date"
    t.integer  "created_by"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quantity_units", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.boolean  "can_not_delete"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semi_product_exchanges", :force => true do |t|
    t.integer  "type"
    t.integer  "inventory_id"
    t.integer  "semi_product_id"
    t.integer  "weight_unit_id"
    t.integer  "size"
    t.text     "reason"
    t.datetime "created_date"
    t.integer  "created_by"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semi_products", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "hash_password"
    t.string   "salt"
    t.string   "fullname"
    t.integer  "position_id"
    t.boolean  "sex"
    t.string   "email"
    t.boolean  "is_admin"
    t.boolean  "is_blocked"
    t.boolean  "can_not_delete"
    t.string   "mobile_phone"
    t.text     "address"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weight_units", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

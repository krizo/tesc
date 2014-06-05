# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140605221202) do

  create_table "buildings", force: true do |t|
    t.string   "name"
    t.string   "investor"
    t.text     "address"
    t.string   "city"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deliveries", force: true do |t|
    t.date     "date"
    t.integer  "amount"
    t.text     "comments"
    t.text     "instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
    t.integer  "order_id"
  end

  create_table "orders", force: true do |t|
    t.string   "comment"
    t.date     "date",                 default: '2014-06-05'
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "requester_id",         default: 1
    t.string   "status",               default: "Nowe"
    t.string   "payment_type",         default: "Przelew"
    t.string   "contract_nr"
    t.text     "contract_details"
    t.text     "recipient"
    t.text     "driving_instructions"
    t.text     "contact_person"
    t.boolean  "hot"
    t.integer  "sap"
    t.string   "name"
    t.integer  "building_id"
  end

  add_index "orders", ["building_id"], name: "index_orders_on_building_id"
  add_index "orders", ["id"], name: "index_orders_on_id"
  add_index "orders", ["requester_id"], name: "index_orders_on_requester_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "depth"
    t.integer  "width"
    t.integer  "length"
    t.integer  "amount"
    t.date     "date"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requesters", force: true do |t|
    t.string   "name"
    t.string   "street"
    t.string   "zip_code"
    t.string   "city"
    t.string   "logo_image_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.string   "password"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

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

ActiveRecord::Schema.define(version: 20140222000525) do

  create_table "orders", force: true do |t|
    t.string   "product_name"
    t.integer  "quantity"
    t.string   "invoice_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders_products", id: false, force: true do |t|
    t.integer "orders_id",   null: false
    t.integer "products_id", null: false
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "vendor"
    t.decimal  "price"
    t.integer  "min_qty"
    t.integer  "lead_time"
    t.string   "image_url"
    t.string   "sku"
    t.text     "notes"
    t.integer  "qty_on_hand"
    t.decimal  "set_up_fee"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

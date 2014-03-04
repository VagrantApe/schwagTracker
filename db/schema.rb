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

ActiveRecord::Schema.define(version: 20140303204603) do

  create_table "line_items", force: true do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.boolean  "received"
    t.string   "invoice_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "vendor"
    t.decimal  "price"
    t.integer  "min_order_qty"
    t.integer  "lead_time"
    t.string   "image_url"
    t.string   "sku"
    t.text     "notes"
    t.integer  "qty_on_hand"
    t.integer  "qty_on_order"
    t.decimal  "set_up_fee"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

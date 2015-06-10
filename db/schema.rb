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

ActiveRecord::Schema.define(version: 20150610042336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sales_orders", force: :cascade do |t|
    t.string   "due_date"
    t.string   "bill_to"
    t.string   "requestor_name"
    t.string   "title"
    t.string   "address"
    t.string   "email"
    t.string   "origin_port"
    t.string   "mode"
    t.string   "service_level"
    t.string   "shipper_name"
    t.string   "shipper_address"
    t.string   "importer_of_record"
    t.string   "customs_origin_broker"
    t.string   "customs_dest_broker"
    t.string   "origin_airport"
    t.string   "actual_weight"
    t.string   "uom"
    t.string   "pcs"
    t.string   "dimensions_length"
    t.string   "dimensions_width"
    t.string   "dimensions_height"
    t.string   "chargeable_weight"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "dest_port"
    t.string   "string"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "remember_digest"
  end

end

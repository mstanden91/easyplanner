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

ActiveRecord::Schema.define(version: 20150225183512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "additionals", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "product_id"
  end

  add_index "additionals", ["product_id"], name: "index_additionals_on_product_id", using: :btree

  create_table "ageranges", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comunnes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maxcapacities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "age_range_from"
    t.string   "age_range_to"
    t.integer  "timeservice_id"
    t.integer  "maxcapacity_id"
    t.integer  "base_price"
    t.string   "option_transport"
    t.integer  "list_id"
    t.string   "options_extra_time"
    t.text     "description_extra_time"
    t.string   "options_extra_kid_string"
    t.integer  "cost_extra_kid"
    t.integer  "max_extra_kid"
    t.string   "options_additional"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "description"
    t.string   "photo"
    t.integer  "category_id"
    t.integer  "user_id"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["list_id"], name: "index_products_on_list_id", using: :btree
  add_index "products", ["maxcapacity_id"], name: "index_products_on_maxcapacity_id", using: :btree
  add_index "products", ["timeservice_id"], name: "index_products_on_timeservice_id", using: :btree

  create_table "timeservices", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transport_rates", force: :cascade do |t|
    t.integer  "list_id"
    t.integer  "comunne_id"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "transport_rates", ["comunne_id"], name: "index_transport_rates_on_comunne_id", using: :btree
  add_index "transport_rates", ["list_id"], name: "index_transport_rates_on_list_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                   default: "", null: false
    t.string   "lastname",               default: "", null: false
    t.string   "commune",                default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "additionals", "products"
  add_foreign_key "products", "lists"
  add_foreign_key "products", "maxcapacities"
  add_foreign_key "products", "timeservices"
  add_foreign_key "transport_rates", "comunnes"
  add_foreign_key "transport_rates", "lists"
end

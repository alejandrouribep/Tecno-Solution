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

ActiveRecord::Schema.define(version: 2018_10_04_110139) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "identification"
    t.string "phone"
    t.string "address"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factura_products", force: :cascade do |t|
    t.bigint "factura_id"
    t.bigint "product_id"
    t.decimal "quantity"
    t.decimal "price"
    t.decimal "total_price"
    t.index ["factura_id"], name: "index_factura_products_on_factura_id"
    t.index ["product_id"], name: "index_factura_products_on_product_id"
  end

  create_table "factura_services", force: :cascade do |t|
    t.bigint "factura_id"
    t.bigint "services_id"
    t.decimal "price"
    t.string "details"
    t.decimal "total_price"
    t.index ["factura_id"], name: "index_factura_services_on_factura_id"
    t.index ["services_id"], name: "index_factura_services_on_services_id"
  end

  create_table "facturas", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "clients_id"
    t.bigint "products_id"
    t.bigint "services_id"
    t.date "fecha"
    t.decimal "price"
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clients_id"], name: "index_facturas_on_clients_id"
    t.index ["products_id"], name: "index_facturas_on_products_id"
    t.index ["services_id"], name: "index_facturas_on_services_id"
    t.index ["users_id"], name: "index_facturas_on_users_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "cantidad"
    t.decimal "price"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "client"
    t.string "category"
    t.string "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "factura_products", "facturas"
  add_foreign_key "factura_products", "products"
  add_foreign_key "factura_services", "facturas"
  add_foreign_key "factura_services", "services", column: "services_id"
  add_foreign_key "facturas", "clients", column: "clients_id"
  add_foreign_key "facturas", "products", column: "products_id"
  add_foreign_key "facturas", "services", column: "services_id"
  add_foreign_key "facturas", "users", column: "users_id"
end

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

ActiveRecord::Schema.define(version: 2019_05_26_184554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.string "attention"
    t.string "street"
    t.string "town"
    t.string "state"
    t.string "zip_code"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id"
  end

  create_table "credit_cards", force: :cascade do |t|
    t.bigint "number"
    t.integer "security"
    t.date "exp_date"
    t.string "name"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_credit_cards_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "notes"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.decimal "unit_price"
    t.text "details"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "process_date"
    t.date "expected_ship_date"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active"
    t.string "notes"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "packages", force: :cascade do |t|
    t.boolean "is_shipped"
    t.date "ship_date"
    t.bigint "shipping_company_id"
    t.decimal "charged"
    t.decimal "cost"
    t.decimal "fee"
    t.decimal "weight"
    t.string "size"
    t.string "tracking"
    t.text "notes"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_packages_on_order_id"
    t.index ["shipping_company_id"], name: "index_packages_on_shipping_company_id"
  end

  create_table "payment_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.decimal "amount"
    t.decimal "fee"
    t.date "date_due"
    t.boolean "is_paid"
    t.date "date_paid"
    t.bigint "payment_type_id"
    t.bigint "order_id"
    t.bigint "credit_card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["credit_card_id"], name: "index_payments_on_credit_card_id"
    t.index ["order_id"], name: "index_payments_on_order_id"
    t.index ["payment_type_id"], name: "index_payments_on_payment_type_id"
  end

  create_table "shipping_companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "customers"
  add_foreign_key "credit_cards", "customers"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "customers"
  add_foreign_key "packages", "orders"
  add_foreign_key "packages", "shipping_companies"
  add_foreign_key "payments", "credit_cards"
  add_foreign_key "payments", "orders"
  add_foreign_key "payments", "payment_types"
end

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_05_210510) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "added_to_cart_items", force: :cascade do |t|
    t.bigint "product_variation_id", null: false
    t.integer "quantity", default: 1
    t.bigint "order_id"
    t.float "price"
    t.bigint "cart_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cart_id"], name: "index_added_to_cart_items_on_cart_id"
    t.index ["order_id"], name: "index_added_to_cart_items_on_order_id"
    t.index ["product_variation_id"], name: "index_added_to_cart_items_on_product_variation_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "street"
    t.string "flat_number"
    t.string "district"
    t.string "city"
    t.float "latitude"
    t.float "longitude"
    t.text "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.string "status", default: "Procesando"
    t.float "total_amount"
    t.integer "total_items"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_product_categories_on_category_id"
    t.index ["product_id"], name: "index_product_categories_on_product_id"
  end

  create_table "product_variations", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.string "size"
    t.string "color"
    t.boolean "published", default: true
    t.float "price"
    t.integer "stock", default: 1
    t.float "discount_price"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_variations_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "short_description"
    t.boolean "published", default: true
    t.text "long_description"
    t.bigint "supplier_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["supplier_id"], name: "index_products_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "added_to_cart_items", "carts"
  add_foreign_key "added_to_cart_items", "orders"
  add_foreign_key "added_to_cart_items", "product_variations"
  add_foreign_key "addresses", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "product_categories", "categories"
  add_foreign_key "product_categories", "products"
  add_foreign_key "product_variations", "products"
  add_foreign_key "products", "suppliers"
end

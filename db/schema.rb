# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_24_163505) do
  create_table "listings", force: :cascade do |t|
    t.integer "perfume_id", null: false
    t.integer "seller_id", null: false
    t.string "condition"
    t.text "description"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["perfume_id"], name: "index_listings_on_perfume_id"
    t.index ["seller_id"], name: "index_listings_on_seller_id"
  end

  create_table "perfumes", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.text "description"
    t.string "size"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "listing_id", null: false
    t.integer "buyer_id", null: false
    t.date "purchase_date"
    t.text "shipping_address"
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_purchases_on_buyer_id"
    t.index ["listing_id"], name: "index_purchases_on_listing_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "listings", "perfumes"
  add_foreign_key "listings", "sellers"
  add_foreign_key "purchases", "buyers"
  add_foreign_key "purchases", "listings"
end

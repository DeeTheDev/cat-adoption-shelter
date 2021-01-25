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

ActiveRecord::Schema.define(version: 2021_01_23_124118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "cat_id"
    t.string "pickup_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cat_id"], name: "index_appointments_on_cat_id"
  end

  create_table "cats", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "age"
    t.string "color"
    t.text "description"
    t.string "image_url"
    t.string "good_with_cats"
    t.string "good_with_dogs"
    t.string "declawed"
    t.string "special_needs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.string "breed"
    t.string "available"
    t.index ["user_id"], name: "index_cats_on_user_id"
  end

  create_table "deliveries", force: :cascade do |t|
    t.bigint "cat_id"
    t.string "delivery_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "street"
    t.string "street_2"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
    t.index ["cat_id"], name: "index_deliveries_on_cat_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.string "street"
    t.string "street_2"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
    t.string "tel_number"
    t.string "mobile_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.string "role", default: "user"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "appointments", "cats", on_delete: :cascade
  add_foreign_key "deliveries", "cats", on_delete: :cascade
  add_foreign_key "profiles", "users"
end

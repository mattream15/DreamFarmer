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

ActiveRecord::Schema.define(version: 2019_12_04_180724) do

  create_table "cannabis_plants", force: :cascade do |t|
    t.string "strain"
    t.integer "number_of_seeds"
    t.string "growing_method"
    t.string "nutrients"
    t.integer "ph"
    t.integer "user_id"
    t.integer "grow_room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "grow_rooms", force: :cascade do |t|
    t.string "light_source"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "harvests", force: :cascade do |t|
    t.integer "weight_of_flowers"
    t.integer "weight_of_leaves"
    t.integer "weight_of_roots"
    t.integer "weight_of_seeds"
    t.integer "weight_of_stalks"
    t.integer "user_id"
    t.integer "cannabis_plant_id"
    t.integer "grow_room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "markets", force: :cascade do |t|
    t.string "part_of_plant"
    t.integer "amount_for_sale"
    t.integer "asking_price"
    t.integer "cannabis_plant_id"
    t.integer "harvest_id"
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
    t.string "username"
    t.string "address"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

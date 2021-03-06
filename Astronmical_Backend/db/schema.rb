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

ActiveRecord::Schema.define(version: 2020_02_04_173312) do

  create_table "constellations", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.string "location"
    t.string "fun_fact"
    t.string "mythology"
    t.string "main_stars"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_constellations", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "constellation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["constellation_id"], name: "index_user_constellations_on_constellation_id"
    t.index ["user_id"], name: "index_user_constellations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "user_constellations", "constellations"
  add_foreign_key "user_constellations", "users"
end

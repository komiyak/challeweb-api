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

ActiveRecord::Schema.define(version: 2019_05_10_073832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "o_auth_lines", force: :cascade do |t|
    t.text "sub", null: false
    t.datetime "created_at", null: false
    t.index ["sub"], name: "index_o_auth_lines_on_sub", unique: true
  end

  create_table "schools", id: :serial, force: :cascade do |t|
    t.text "name", null: false
    t.integer "order_number", null: false
    t.datetime "created_at", null: false
  end

  create_table "user_o_auth_lines", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "o_auth_line_id", null: false
    t.datetime "created_at", null: false
    t.index ["o_auth_line_id"], name: "index_user_o_auth_lines_on_o_auth_line_id", unique: true
    t.index ["user_id"], name: "index_user_o_auth_lines_on_user_id", unique: true
  end

  create_table "user_years", id: :serial, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "year_id", null: false
    t.datetime "created_at", null: false
    t.index ["user_id", "year_id"], name: "index_user_years_on_user_id_and_year_id", unique: true
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.text "sei", null: false
    t.text "mei", null: false
    t.integer "school_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_users_on_school_id"
  end

  create_table "years", id: :serial, force: :cascade do |t|
    t.text "name", null: false
    t.integer "order_number", null: false
    t.datetime "created_at", null: false
  end

  add_foreign_key "user_o_auth_lines", "o_auth_lines"
  add_foreign_key "user_o_auth_lines", "users"
  add_foreign_key "user_years", "users"
  add_foreign_key "user_years", "years"
  add_foreign_key "users", "schools"
end

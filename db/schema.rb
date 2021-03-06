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

ActiveRecord::Schema.define(version: 20180526075726) do

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "shortname"
    t.integer "occupancy"
    t.integer "men"
    t.integer "adults"
    t.integer "children"
    t.integer "subroom"
    t.integer "anchorate"
    t.float "price"
    t.integer "availability"
    t.string "board"
    t.string "boards"
    t.integer "rtype"
    t.string "rtype_name"
    t.integer "dec_avail"
    t.integer "min_price"
    t.integer "max_price"
    t.integer "woodoo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wubook_fetches", force: :cascade do |t|
    t.integer "outcome"
    t.text "raw"
    t.boolean "processed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

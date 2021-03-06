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

ActiveRecord::Schema.define(version: 2020_11_15_151219) do

  create_table "bookings", force: :cascade do |t|
    t.string "driver_name"
    t.string "license_plate_number"
    t.integer "space_number"
    t.integer "parking_space_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "start_time"
    t.string "finish_time"
    t.string "cost"
    t.index ["parking_space_id"], name: "index_bookings_on_parking_space_id"
  end

  create_table "car_parks", force: :cascade do |t|
    t.string "name"
    t.integer "number_spaces"
    t.string "parking_space"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_spaces", force: :cascade do |t|
    t.integer "number"
    t.integer "car_park_id"
    t.string "booking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_park_id"], name: "index_parking_spaces_on_car_park_id"
  end

end

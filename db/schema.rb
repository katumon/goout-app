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

ActiveRecord::Schema[7.0].define(version: 2022_11_08_133301) do
  create_table "spot_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spot_cats", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spot_details", force: :cascade do |t|
    t.integer "number"
    t.string "regular_holiday"
    t.string "address"
    t.string "public_link"
    t.string "weekday_open_time"
    t.string "weekday_close_time"
    t.string "weekend_open_time"
    t.string "weekend_close_time"
    t.integer "fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spot_overviews", force: :cascade do |t|
    t.string "name"
    t.text "info"
    t.string "access"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "spot_category"
  end

  create_table "spots", force: :cascade do |t|
    t.text "detail"
    t.string "access"
    t.integer "open_time"
    t.integer "close_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

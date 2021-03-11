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

ActiveRecord::Schema.define(version: 2021_03_10_173804) do

  create_table "guest_details", force: :cascade do |t|
    t.string "localized_description"
    t.integer "number_of_adults"
    t.integer "number_of_children"
    t.integer "number_of_infants"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "guest_phone_numbers", force: :cascade do |t|
    t.string "number"
    t.integer "guest_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.string "expected_payout_amount"
    t.string "listing_security_price_accurate"
    t.string "host_currency"
    t.integer "nights"
    t.string "status_type"
    t.string "total_paid_amount_accurate"
    t.integer "guest_detail_id"
    t.integer "guest_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

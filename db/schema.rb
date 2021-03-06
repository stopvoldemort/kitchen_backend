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

ActiveRecord::Schema.define(version: 20171206021729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guest_reviews", force: :cascade do |t|
    t.integer "stars"
    t.text "review"
    t.integer "host_id"
    t.integer "guest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kitchen_pictures", force: :cascade do |t|
    t.string "url"
    t.integer "kitchen_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kitchen_reviews", force: :cascade do |t|
    t.integer "stars"
    t.text "review"
    t.integer "guest_id"
    t.integer "kitchen_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kitchens", force: :cascade do |t|
    t.string "title"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.text "description"
    t.integer "size"
    t.integer "max_guests"
    t.integer "base_price"
    t.integer "price_per_guest"
    t.string "knives"
    t.string "pots"
    t.string "pans"
    t.boolean "food_processor"
    t.boolean "standing_mixer"
    t.boolean "deep_fryer"
    t.boolean "pressure_cooker"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "blurb"
    t.float "longitude"
    t.float "latitude"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.integer "recipient_id"
    t.integer "sender_id"
    t.integer "reservation_id"
    t.boolean "read"
    t.float "milliseconds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "guest_id"
    t.integer "kitchen_id"
    t.integer "guest_number"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "milliseconds"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "city"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "pic_url"
  end

end

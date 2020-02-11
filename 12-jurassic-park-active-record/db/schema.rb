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

ActiveRecord::Schema.define(version: 2020_02_11_182528) do

  create_table "dinosaurs", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.float "height"
    t.integer "kill_count"
  end

  create_table "dinosaurs_visitors", force: :cascade do |t|
    t.integer "visitor_id"
    t.integer "dinosaur_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.integer "calories"
    t.integer "age", default: 0
    t.float "price"
  end

  create_table "foods_visitors", force: :cascade do |t|
    t.integer "food_id"
    t.integer "visitor_id"
  end

  create_table "visitors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.float "height"
  end

end

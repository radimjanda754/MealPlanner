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

ActiveRecord::Schema.define(version: 20170201014520) do

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.integer  "difficult"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.integer  "prots"
    t.integer  "carbs"
    t.integer  "fats"
    t.integer  "cals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.integer  "plan_id"
    t.integer  "food_id"
    t.integer  "grams"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_meals_on_food_id"
    t.index ["plan_id"], name: "index_meals_on_plan_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sports", force: :cascade do |t|
    t.integer  "plan_id"
    t.integer  "activity_id"
    t.integer  "time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["activity_id"], name: "index_sports_on_activity_id"
    t.index ["plan_id"], name: "index_sports_on_plan_id"
  end

end

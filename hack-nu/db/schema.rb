# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160828102919) do

  create_table "account_data", force: :cascade do |t|
    t.float    "amount"
    t.string   "category"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "account_data", ["user_id"], name: "index_account_data_on_user_id"

  create_table "objectives", force: :cascade do |t|
    t.string   "name"
    t.string   "details"
    t.float    "amount"
    t.date     "time"
    t.float    "monthly_amount"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "plannings", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.string   "subcategory"
    t.float    "value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.float    "monthly_income"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "shop"
    t.integer  "bar"
    t.integer  "gift"
    t.integer  "education"
    t.integer  "health"
    t.integer  "services"
    t.integer  "transport"
    t.integer  "leisure"
    t.integer  "electronics"
    t.integer  "travel"
    t.integer  "dressing"
  end

end

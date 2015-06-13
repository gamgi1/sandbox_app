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

ActiveRecord::Schema.define(version: 20150613032722) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "computers", force: :cascade do |t|
    t.string   "computer_name"
    t.integer  "memory"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string   "name"
    t.integer  "calories",   default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "restaurant"
    t.integer  "prep_time",  default: 30
    t.integer  "person_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.datetime "realeased_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "address"
  end

  create_table "plates", force: :cascade do |t|
    t.string   "name"
    t.integer  "calories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.integer  "computer_id"
    t.string   "program_name"
    t.integer  "program_size"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "programs", ["computer_id"], name: "index_programs_on_computer_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.integer  "membership",      default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end

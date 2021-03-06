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

ActiveRecord::Schema.define(version: 20151006172950) do

  create_table "equipment", force: :cascade do |t|
    t.string   "name",        limit: 30
    t.text     "description", limit: 200
    t.string   "tag_number"
    t.string   "category"
    t.string   "cost"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",                                        null: false
    t.string   "roomNumber"
    t.text     "description",      limit: 200
    t.date     "date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean  "food"
    t.boolean  "projector"
    t.boolean  "capacity"
    t.string   "until"
    t.integer  "user_id"
    t.integer  "room_id"
    t.boolean  "pending_approval",             default: true
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "rentals", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "name",                                        null: false
    t.integer  "user_id"
    t.text     "description",      limit: 200
    t.integer  "equipment_id",                                null: false
    t.boolean  "pending_approval",             default: true
    t.string   "until"
    t.date     "date"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name",         limit: 30
    t.integer  "number"
    t.text     "description",  limit: 200
    t.string   "category"
    t.boolean  "allowFood"
    t.boolean  "hasProjector"
    t.integer  "capacity"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "settings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string  "first_name", limit: 50,                 null: false
    t.string  "last_name",  limit: 50,                 null: false
    t.string  "image_url"
    t.boolean "teacher",               default: false
    t.string  "password",   limit: 40,                 null: false
    t.string  "email",      limit: 40,                 null: false
  end

end

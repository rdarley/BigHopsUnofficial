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

ActiveRecord::Schema.define(version: 20140530025515) do

  create_table "active_beers", force: true do |t|
    t.integer  "Location_id"
    t.integer  "Beer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_beers", ["Beer_id"], name: "index_active_beers_on_Beer_id"
  add_index "active_beers", ["Location_id"], name: "index_active_beers_on_Location_id"

  create_table "beers", force: true do |t|
    t.string   "brewery"
    t.string   "name"
    t.string   "style"
    t.string   "price"
    t.decimal  "abv"
    t.integer  "Untapped_Beer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "beers", ["Untapped_Beer_id"], name: "index_beers_on_Untapped_Beer_id"

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "parser"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "untapped_beers", force: true do |t|
    t.string   "beer_style"
    t.decimal  "rating_score"
    t.string   "description"
    t.integer  "untapped_id"
    t.date     "updated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

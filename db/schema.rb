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

ActiveRecord::Schema.define(version: 20141213235346) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "array_tests", force: :cascade do |t|
    t.string   "string_array",                         array: true
    t.string   "string_array_with_index",              array: true
    t.integer  "integer_array",                        array: true
    t.boolean  "boolean_array",                        array: true
    t.date     "date_array",                           array: true
    t.datetime "date_time_array",                      array: true
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "array_tests", ["string_array_with_index"], name: "index_array_tests_on_string_array_with_index", using: :gin

# Could not dump table "articles" because of following StandardError
#   Unknown type 'article_status' for column 'status'

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "tags",                    array: true
    t.integer  "ratings",                 array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "books", ["ratings"], name: "index_books_on_ratings", using: :gin
  add_index "books", ["tags"], name: "index_books_on_tags", using: :gin

# Could not dump table "contacts" because of following StandardError
#   Unknown type 'full_address' for column 'address'

  create_table "devices", force: :cascade do |t|
    t.inet     "ip"
    t.cidr     "network"
    t.macaddr  "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.binary   "payload"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.json      "payload"
    t.jsonb     "payloadb"
    t.daterange "duration"
    t.datetime  "created_at", null: false
    t.datetime  "updated_at", null: false
  end

  add_index "events", ["payloadb"], name: "index_events_on_payloadb", using: :gin

  create_table "profiles", force: :cascade do |t|
    t.hstore   "settings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "revisions", force: :cascade do |t|
    t.uuid     "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.bit      "settings",   limit: 8
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end

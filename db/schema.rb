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

ActiveRecord::Schema.define(version: 20151001192006) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.string   "promo_title",       limit: 255
    t.string   "status",            limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ancestry",          limit: 255
    t.string   "names_depth_cache", limit: 255
  end

  add_index "categories", ["ancestry"], name: "index_categories_on_ancestry", using: :btree

  create_table "categories_specs", id: false, force: :cascade do |t|
    t.integer "spec_id",     limit: 4
    t.integer "category_id", limit: 4
  end

  add_index "categories_specs", ["category_id"], name: "index_specs_categories_on_category_id", using: :btree
  add_index "categories_specs", ["spec_id"], name: "index_specs_categories_on_spec_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "ticker",        limit: 255
    t.date     "founded_date"
    t.string   "hq_location",   limit: 255
    t.text     "short_summary", limit: 65535
    t.string   "website",       limit: 255
    t.string   "twitter",       limit: 255
    t.string   "instagram",     limit: 255
    t.string   "linkedin",      limit: 255
    t.string   "youtube",       limit: 255
    t.string   "facebook",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "details", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.integer  "spec_id",    limit: 4
    t.string   "value",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "role",              limit: 255
    t.string   "name",              limit: 255
    t.integer  "product_id",        limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name",    limit: 255
    t.string   "file_content_type", limit: 255
    t.integer  "file_file_size",    limit: 4
    t.datetime "file_updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "short_name",    limit: 255
    t.text     "short_summary", limit: 65535
    t.string   "website",       limit: 255
    t.datetime "discontinued"
    t.string   "upc",           limit: 255
    t.string   "asin",          limit: 255
    t.datetime "launch_at"
    t.datetime "embargo_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "company_id",    limit: 4
    t.integer  "category_id",   limit: 4
  end

  create_table "specs", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "promo_title", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end

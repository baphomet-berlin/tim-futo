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

ActiveRecord::Schema.define(version: 20151117104501) do

  create_table "galleries", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galleries_pictures", force: :cascade do |t|
    t.integer  "gallery_id"
    t.integer  "picture_id"
    t.boolean  "cover"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "galleries_pictures", ["gallery_id"], name: "index_galleries_pictures_on_gallery_id"
  add_index "galleries_pictures", ["picture_id"], name: "index_galleries_pictures_on_picture_id"

  create_table "pictures", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

end

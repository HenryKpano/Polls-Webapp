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

ActiveRecord::Schema.define(version: 20151120163020) do

  create_table "polls", force: :cascade do |t|
    t.string   "title"
    t.text     "message"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "first_image_file_name"
    t.string   "first_image_content_type"
    t.integer  "first_image_file_size"
    t.datetime "first_image_updated_at"
    t.string   "second_image_file_name"
    t.string   "second_image_content_type"
    t.integer  "second_image_file_size"
    t.datetime "second_image_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_one_file_name"
    t.string   "image_one_content_type"
    t.integer  "image_one_file_size"
    t.datetime "image_one_updated_at"
    t.string   "topic"
    t.string   "mesage"
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "poll_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "vote_count"
  end

  add_index "votes", ["poll_id"], name: "index_votes_on_poll_id"

end

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

ActiveRecord::Schema.define(version: 20170222015544) do

  create_table "comments", force: :cascade do |t|
    t.text     "comment"
    t.text     "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "title"
    t.text     "picture"
    t.integer  "user_id"
    t.text     "ingredients"
    t.text     "description"
    t.integer  "serving"
    t.text     "language"
    t.integer  "preptime"
    t.integer  "cooktime"
    t.integer  "likes"
    t.text     "notes"
    t.integer  "comments"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_recipes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "recipe_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "language"
    t.string   "password"
    t.string   "avatar"
    t.integer  "recipes"
    t.integer  "following"
    t.integer  "followers"
    t.string   "translated"
    t.integer  "points"
    t.text     "menu"
    t.text     "planner"
    t.text     "shoplist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130330154316) do

  create_table "meals", :force => true do |t|
    t.text     "type"
    t.time     "start"
    t.time     "end"
    t.integer  "venue_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "meals", ["venue_id"], :name => "index_meals_on_venue_id"

  create_table "ratings", :force => true do |t|
    t.integer  "rate"
    t.integer  "venue_id"
    t.integer  "user_id"
    t.text     "comments"
    t.integer  "meal_id"
    t.datetime "posted"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "ratings", ["meal_id"], :name => "index_ratings_on_meal_id"
  add_index "ratings", ["user_id"], :name => "index_ratings_on_user_id"
  add_index "ratings", ["venue_id"], :name => "index_ratings_on_venue_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "avg"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

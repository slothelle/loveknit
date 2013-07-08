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

ActiveRecord::Schema.define(:version => 20130707233250) do

  create_table "hat_patterns", :force => true do |t|
    t.string   "title"
    t.integer  "pattern_id"
    t.integer  "needle_id"
    t.integer  "yarn_weight_id"
    t.integer  "gauge_row_inch"
    t.integer  "gauge_per_inch"
    t.integer  "circumference"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "needles", :force => true do |t|
    t.string "size"
  end

  create_table "patterns", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "hat_pattern_id"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "ravelry_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "yarn_weights", :force => true do |t|
    t.string "weight"
    t.string "yardage_factor"
  end

end

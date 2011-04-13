# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101023100133) do

  create_table "eightball_logs", :force => true do |t|
    t.integer  "nick_id",    :limit => 11
    t.string   "query"
    t.string   "answer"
    t.datetime "created_at"
  end

  create_table "links", :force => true do |t|
    t.integer  "nick_id",      :limit => 11
    t.string   "link"
    t.datetime "created_at"
    t.integer  "times_posted", :limit => 11, :default => 1
  end

  create_table "logs", :force => true do |t|
    t.integer  "nick_id",    :limit => 11
    t.string   "text"
    t.datetime "created_at"
  end

  create_table "nicks", :force => true do |t|
    t.string   "nick"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "words",      :limit => 11
  end

end

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

ActiveRecord::Schema.define(:version => 20080815142209) do

  create_table "tabelogs", :force => true do |t|
    t.string   "restaurant_name", :default => "", :null => false
    t.string   "tabelog_url",     :default => "", :null => false
    t.float    "total_score",                     :null => false
    t.float    "taste_score",                     :null => false
    t.float    "service_score",                   :null => false
    t.float    "mood_score",                      :null => false
    t.string   "situation"
    t.string   "dinner_price"
    t.string   "lunch_price"
    t.string   "category"
    t.string   "station"
    t.string   "address"
    t.string   "tel"
    t.string   "business_hours"
    t.string   "holiday"
    t.float    "latitude",                        :null => false
    t.float    "longitude",                       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

end

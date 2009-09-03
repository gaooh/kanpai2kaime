class CreateTabelogs < ActiveRecord::Migration
  def self.up
    create_table :tabelogs do |t|
      t.string "restaurant_name", :null => false
      t.string "tabelog_url",     :null => false
      t.float  "total_score",     :null => false
      t.float  "taste_score",     :null => false
      t.float  "service_score",   :null => false
      t.float  "mood_score",      :null => false
      t.string "situation",       :null => true
      t.string "dinner_price",    :null => true
      t.string "lunch_price",     :null => true
      t.string "category",        :null => true
      t.string "station",         :null => true
      t.string "address",         :null => true
      t.string "tel",             :null => true
      t.string "business_hours",  :null => true
      t.string "holiday",         :null => true
      t.float  "latitude",        :null => false
      t.float  "longitude",       :null => false
      t.timestamps
      t.datetime   :deleted_at,     :null => true
    end
  end

  def self.down
    drop_table :tabelogs
  end
end

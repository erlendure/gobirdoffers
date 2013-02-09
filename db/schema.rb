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

ActiveRecord::Schema.define(:version => 20121229195633) do

  create_table "bullet_points", :force => true do |t|
    t.integer  "offer_id"
    t.string   "bullet_text"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "sequence"
  end

  create_table "categories", :force => true do |t|
    t.string   "cat_name"
    t.string   "cat_description"
    t.integer  "locale_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "country_name"
    t.integer  "default_locale_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "countries", ["country_name"], :name => "index_countries_on_country_name"

  create_table "images", :force => true do |t|
    t.integer  "offer_id"
    t.text     "image_url"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "locales", :force => true do |t|
    t.integer  "locale_id"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "locales", ["locale_id"], :name => "index_locales_on_locale_id"

  create_table "offer_categories", :force => true do |t|
    t.integer  "category_id"
    t.integer  "offer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "offers", :force => true do |t|
    t.integer  "owner_id"
    t.string   "heading"
    t.decimal  "price",             :precision => 10, :scale => 0
    t.decimal  "discount",          :precision => 10, :scale => 0
    t.text     "details"
    t.text     "terms"
    t.datetime "end_date"
    t.datetime "expire_date_begin"
    t.datetime "expire_date_end"
    t.boolean  "active"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.boolean  "featured"
    t.integer  "visit_count"
  end

  add_index "offers", ["owner_id"], :name => "index_offers_on_owner_id"

  create_table "owners", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address3"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.integer  "country_id"
    t.string   "email"
    t.string   "url"
    t.string   "contact_name"
    t.string   "contact_address1"
    t.string   "contact_address3"
    t.string   "contact_address2"
    t.string   "contact_city"
    t.string   "contact_state"
    t.string   "contact_zip"
    t.string   "contact_phone"
    t.integer  "contact_country_id"
    t.string   "contact_email"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id"
  end

  add_index "owners", ["name"], :name => "index_owners_on_name"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address3"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.integer  "country_id"
    t.string   "email"
    t.string   "url"
    t.string   "access_level"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "username"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["name"], :name => "index_users_on_name"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
=======
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

ActiveRecord::Schema.define(:version => 20121229195633) do

  create_table "bullet_points", :force => true do |t|
    t.integer  "offer_id"
    t.string   "bullet_text"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "sequence"
  end

  create_table "categories", :force => true do |t|
    t.string   "cat_name"
    t.string   "cat_description"
    t.integer  "locale_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "country_name"
    t.integer  "default_locale_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "countries", ["country_name"], :name => "index_countries_on_country_name"

  create_table "images", :force => true do |t|
    t.integer  "offer_id"
    t.text     "image_url"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "locales", :force => true do |t|
    t.integer  "locale_id"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "locales", ["locale_id"], :name => "index_locales_on_locale_id"

  create_table "offer_categories", :force => true do |t|
    t.integer  "category_id"
    t.integer  "offer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "offers", :force => true do |t|
    t.integer  "owner_id"
    t.string   "heading"
    t.decimal  "price"
    t.decimal  "discount"
    t.text     "details",           :limit => 255
    t.text     "terms",             :limit => 255
    t.boolean  "featured",          :limit => 255
    t.datetime "end_date"
    t.datetime "expire_date_begin"
    t.datetime "expire_date_end"
    t.boolean  "active"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "visit_count"
  end

  add_index "offers", ["owner_id"], :name => "index_offers_on_owner_id"

  create_table "owners", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address3"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.integer  "country_id"
    t.string   "email"
    t.string   "url"
    t.string   "contact_name"
    t.string   "contact_address1"
    t.string   "contact_address3"
    t.string   "contact_address2"
    t.string   "contact_city"
    t.string   "contact_state"
    t.string   "contact_zip"
    t.string   "contact_phone"
    t.integer  "contact_country_id"
    t.string   "contact_email"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id"
  end

  add_index "owners", ["name"], :name => "index_owners_on_name"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address3"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.integer  "country_id"
    t.string   "email"
    t.string   "url"
    t.string   "access_level"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "username"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["name"], :name => "index_users_on_name"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end

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

ActiveRecord::Schema.define(:version => 20140504132722) do

  create_table "accounts", :force => true do |t|
    t.string   "role",                   :default => "user", :null => false
    t.string   "email",                  :default => "",     :null => false
    t.string   "encrypted_password",     :default => "",     :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "last_access_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  add_index "accounts", ["authentication_token"], :name => "index_accounts_on_authentication_token", :unique => true
  add_index "accounts", ["confirmation_token"], :name => "index_accounts_on_confirmation_token", :unique => true
  add_index "accounts", ["email"], :name => "index_accounts_on_email", :unique => true
  add_index "accounts", ["reset_password_token"], :name => "index_accounts_on_reset_password_token", :unique => true
  add_index "accounts", ["unlock_token"], :name => "index_accounts_on_unlock_token", :unique => true

  create_table "contact_infos", :force => true do |t|
    t.string   "first_name", :default => "", :null => false
    t.string   "last_name",  :default => "", :null => false
    t.string   "subregion",  :default => "", :null => false
    t.string   "community",  :default => "", :null => false
    t.string   "country",    :default => "", :null => false
    t.string   "avatar"
    t.integer  "account_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

end

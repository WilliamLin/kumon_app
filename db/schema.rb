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

ActiveRecord::Schema.define(:version => 20130420202610) do

  create_table "account_contacts", :force => true do |t|
    t.string   "type"
    t.string   "grade"
    t.integer  "school_year_start"
    t.integer  "school_year_end"
    t.boolean  "transfer_student"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "student_no"
    t.integer  "account_id"
    t.integer  "contact_id"
  end

  create_table "accounts", :force => true do |t|
    t.string   "account_number"
    t.string   "account_status"
    t.string   "previous_account_number"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "user_id"
    t.string   "password_digest"
    t.integer  "center_id"
  end

  create_table "addresses", :force => true do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "address_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "account_id"
  end

  create_table "centers", :force => true do |t|
    t.string   "center_number"
    t.integer  "address_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "email"
    t.string   "home_phone"
    t.string   "alt_phone"
    t.date     "birthday"
    t.string   "gender"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "enrollments", :force => true do |t|
    t.date     "enrollment_date"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "account_contact_id"
    t.integer  "school_class_id"
  end

  create_table "payments", :force => true do |t|
    t.date     "due_date"
    t.float    "amount"
    t.string   "payment_method"
    t.string   "payment_status"
    t.boolean  "auto_renew"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "school_classes", :force => true do |t|
    t.string   "subject"
    t.integer  "grade"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

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

ActiveRecord::Schema.define(:version => 20100927123721) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meanings", :force => true do |t|
    t.text     "description"
    t.integer  "word_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meanings", ["word_id", "category_id"], :name => "index_meanings_on_word_id_and_category_id", :unique => true

  create_table "sign_languages", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "signs", :force => true do |t|
    t.text     "description"
    t.text     "gesturegram"
    t.text     "xmlDescription"
    t.string   "renderedFile"
    t.integer  "signLanguage_id"
    t.integer  "meaning_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "signs", ["meaning_id", "signLanguage_id"], :name => "index_signs_on_meaning_id_and_signLanguage_id", :unique => true

  create_table "words", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

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

ActiveRecord::Schema.define(version: 20180211231651) do

  create_table "detail_likes", force: :cascade do |t|
    t.integer "like_id"
    t.integer "detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "details", force: :cascade do |t|
    t.string "body"
    t.integer "word_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "examples", force: :cascade do |t|
    t.string "japanese"
    t.string "english"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "word_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "word_id"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "content_id"
  end

  create_table "meaning_likes", force: :cascade do |t|
    t.integer "like_id"
    t.integer "meaning_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meanings", force: :cascade do |t|
    t.string "meaning"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "word_id"
    t.integer "user_id"
    t.index ["word_id"], name: "index_meanings_on_word_id"
  end

  create_table "picture_likes", force: :cascade do |t|
    t.integer "like_id"
    t.integer "picture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "picture"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "word_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "picture"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "words", force: :cascade do |t|
    t.string "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "picture_id"
  end

end

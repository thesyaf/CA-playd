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

ActiveRecord::Schema.define(version: 20171108061113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "recipient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.text "api_game_id"
    t.string "name"
    t.text "image"
    t.text "platform"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "conversation_id"
    t.bigint "user_id"
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "ownedgames", force: :cascade do |t|
    t.string "game_api_id"
    t.string "game_name"
    t.string "game_image"
    t.string "game_owned"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_ownedgames_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.string "stripe_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "avatar_data"
    t.text "username"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "trades", force: :cascade do |t|
    t.bigint "ownedgame_id"
    t.bigint "wantedgame_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ownedgame_id"], name: "index_trades_on_ownedgame_id"
    t.index ["wantedgame_id"], name: "index_trades_on_wantedgame_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "stripe_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wantedgames", force: :cascade do |t|
    t.string "game_api_id"
    t.string "game_name"
    t.string "game_image"
    t.string "game_owned"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_wantedgames_on_user_id"
  end

  add_foreign_key "ownedgames", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "trades", "ownedgames"
  add_foreign_key "trades", "wantedgames"
  add_foreign_key "wantedgames", "users"
end

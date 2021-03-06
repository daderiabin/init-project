# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_29_141740) do

  create_table "card_types", force: :cascade do |t|
    t.string "quality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.integer "league_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["league_id"], name: "index_clubs_on_league_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "img"
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "permalink"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "full_name"
    t.integer "rating"
    t.string "position"
    t.integer "age"
    t.integer "skill_moves"
    t.integer "weak_foot"
    t.float "price"
    t.integer "card_type_id", null: false
    t.integer "nation_id", null: false
    t.integer "league_id", null: false
    t.integer "club_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["card_type_id"], name: "index_players_on_card_type_id"
    t.index ["club_id"], name: "index_players_on_club_id"
    t.index ["league_id"], name: "index_players_on_league_id"
    t.index ["nation_id"], name: "index_players_on_nation_id"
  end

  add_foreign_key "clubs", "leagues"
  add_foreign_key "players", "card_types"
  add_foreign_key "players", "clubs"
  add_foreign_key "players", "leagues"
  add_foreign_key "players", "nations"
end

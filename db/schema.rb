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

ActiveRecord::Schema.define(version: 2021_08_05_140218) do

  create_table "games", force: :cascade do |t|
    t.datetime "date"
    t.string "team1"
    t.string "team2"
    t.string "game_score"
  end

  create_table "performances", force: :cascade do |t|
    t.integer "player_score"
    t.integer "game_id"
    t.integer "player_id"
    t.index ["game_id"], name: "index_performances_on_game_id"
    t.index ["player_id"], name: "index_performances_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.integer "age"
    t.integer "number"
    t.integer "team_id"
    t.integer "position_id"
    t.index ["position_id"], name: "index_players_on_position_id"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "position"
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.string "coach"
  end

end

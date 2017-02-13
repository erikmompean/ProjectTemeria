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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170116193409) do

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.integer  "pos_x"
    t.integer  "pos_y"
    t.string   "religion"
    t.string   "idealsOfPopulation"
    t.integer  "player_id"
    t.integer  "group_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "cities", ["group_id"], name: "index_cities_on_group_id"
  add_index "cities", ["player_id"], name: "index_cities_on_player_id"

  create_table "groups", force: :cascade do |t|
    t.integer  "type1"
    t.integer  "type2"
    t.integer  "type3"
    t.boolean  "battleStyle"
    t.integer  "player_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "groups", ["player_id"], name: "index_groups_on_player_id"

  create_table "players", force: :cascade do |t|
    t.integer  "gold"
    t.string   "inGameName"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "players", ["user_id"], name: "index_players_on_user_id"

  create_table "religions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string   "type"
    t.text     "description"
    t.integer  "attack"
    t.integer  "defense"
    t.integer  "morale"
    t.integer  "pentration"
    t.integer  "militarPower"
    t.integer  "goldCost"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.date     "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100302170135) do

  create_table "games", :force => true do |t|
    t.integer  "team1"
    t.integer  "team2"
    t.datetime "date"
    t.string   "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
  end

  create_table "players_teams", :id => false, :force => true do |t|
    t.integer "player_id"
    t.integer "team_id"
  end

  create_table "sports", :force => true do |t|
    t.string   "name"
    t.integer  "teamsize"
    t.integer  "mmax"
    t.integer  "mmin"
    t.integer  "fmax"
    t.integer  "fmin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teamplayers", :force => true do |t|
    t.integer  "team"
    t.integer  "player"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "sport_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

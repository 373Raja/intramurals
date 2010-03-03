class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.integer :team1
      t.integer :team2
      t.datetime :date
      t.string :score

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end

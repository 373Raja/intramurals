class Quickfix < ActiveRecord::Migration
  def self.up
    change_table :players do |t|
      t.integer :team_id
    end
  end

  def self.down
    change_table :players do |t|
    end
  end
end

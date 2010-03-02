class CreateTeamplayers < ActiveRecord::Migration
  def self.up
    create_table :teamplayers do |t|
      t.integer :team
      t.integer :player

      t.timestamps
    end
  end

  def self.down
    drop_table :teamplayers
  end
end

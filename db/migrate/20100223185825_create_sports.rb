class CreateSports < ActiveRecord::Migration
  def self.up
    create_table :sports do |t|
      t.string :name
      t.integer :teamsize
      t.integer :mmax
      t.integer :mmin
      t.integer :fmax
      t.integer :fmin

      t.timestamps
    end
  end

  def self.down
    drop_table :sports
  end
end

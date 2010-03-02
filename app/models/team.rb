class Team < ActiveRecord::Base
  belongs_to :sport
  #has_and_belongs_to_many :players
  has_many :players
end

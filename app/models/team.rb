class Team < ApplicationRecord
  has_many :games, class_name: ‘Game’, foreign_key: ‘home_team_id’
  has_many :games, class_name: ‘Game’, foreign_key: ‘away_team_id’
end

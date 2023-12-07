class Team < ApplicationRecord
  has_many :games_as_home_team, class_name: "Game", foreign_key: "home_team_id"
  has_many :games_as_away_team, class_name: "Game", foreign_key: "away_team_id"

  def upcoming_games
    Game.where("(home_team_id = :team_id OR away_team_id = :team_id) AND date > :today", team_id: id, today: Date.today)
  end



  # include PgSearch::Model
  # multisearchable against: [:name]
end

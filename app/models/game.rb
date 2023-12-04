class Game < ApplicationRecord
  belongs_to :home_team, class_name: "Team"
  belongs_to :away_team, class_name: "Team"
  has_many :groups

  include PgSearch::Model
  multisearchable against: [:date, :city]
end

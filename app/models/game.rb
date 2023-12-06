class Game < ApplicationRecord
  belongs_to :home_team, class_name: "Team"
  belongs_to :away_team, class_name: "Team"
  has_many :groups, dependent: :destroy

include PgSearch::Model
pg_search_scope :search_by_city_and_date,
  against: [ :city, :date],
  using: {
    tsearch: { prefix: true }
  }
end

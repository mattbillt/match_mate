class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.references :team, null: false, foreign_key: true
      t.date :date
      t.string :city

      t.timestamps
    end
  end
end

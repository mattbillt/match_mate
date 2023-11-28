class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.string :country
      t.text :bio

      t.timestamps
    end
  end
end

class AddStadiumToTeams < ActiveRecord::Migration[7.1]
  def change
      add_column :teams, :stadium, :string
  end
end

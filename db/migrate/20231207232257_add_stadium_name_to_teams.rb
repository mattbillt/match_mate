class AddStadiumNameToTeams < ActiveRecord::Migration[7.1]
  def change
      add_column :teams, :stadium_name, :string
  end
end

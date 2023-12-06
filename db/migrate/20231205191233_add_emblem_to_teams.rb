class AddEmblemToTeams < ActiveRecord::Migration[7.1]
  def change
      add_column :teams, :emblem, :string
  end
end

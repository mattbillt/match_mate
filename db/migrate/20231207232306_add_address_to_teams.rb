class AddAddressToTeams < ActiveRecord::Migration[7.1]
  def change
      add_column :teams, :address, :string
  end
end

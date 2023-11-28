class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
      add_column :users, :name, :string
      add_column :users, :language, :string
      add_column :users, :favourite_team, :string
      add_column :users, :preferences, :string
  end
end

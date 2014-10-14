class AddColumnGames < ActiveRecord::Migration
  def change
  	add_column :games, :turn, :integer
  	add_column :games, :current_player, :integer
  end
end

class GameDefaultValues < ActiveRecord::Migration
  def change
  	change_column :games, :turn, :integer, :default => 1
  	change_column :games, :current_player, :integer, :default => 1
  end
end

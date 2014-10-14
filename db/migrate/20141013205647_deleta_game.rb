class DeletaGame < ActiveRecord::Migration
  def down
  	drop_table :game
  end
end

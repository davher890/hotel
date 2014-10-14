class DeletaGame2 < ActiveRecord::Migration
  def change
  	drop_table :game
  end
end

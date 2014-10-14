class Create < ActiveRecord::Migration
  def change
  	create_table :game do |t|
  		t.integer :turn
  		t.string :current_player 
  		t.timestamps
  	end
  end
end
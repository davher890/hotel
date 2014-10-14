class ChangeCasillaPlayer < ActiveRecord::Migration
  def change
  	remove_column :players, :casilla, :integer
  	add_column :players, :square, :integer
  end
end

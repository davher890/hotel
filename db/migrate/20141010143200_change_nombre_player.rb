class ChangeNombrePlayer < ActiveRecord::Migration
  def change
  	remove_column :players, :nombre, :string
  	add_column :players, :name, :string
  end
end

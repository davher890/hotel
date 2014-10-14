class ChangeNombreNameHotels < ActiveRecord::Migration
  def change
  	remove_column :hotels, :nombre, :string
  	add_column :hotels, :name, :string
  end
end

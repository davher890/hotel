class DeletePrecioToHotels < ActiveRecord::Migration
  def change
  	remove_column :hotels, :precio
  end
end

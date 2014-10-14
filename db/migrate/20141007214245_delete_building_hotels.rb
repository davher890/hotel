class DeleteBuildingHotels < ActiveRecord::Migration
  def change
  	remove_column :hotels, :building1
  end
end

class AddMainBuildingToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :main_building, :integer
  end
end

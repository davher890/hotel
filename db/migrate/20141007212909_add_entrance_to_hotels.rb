class AddEntranceToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :entrance, :integer
  end
end

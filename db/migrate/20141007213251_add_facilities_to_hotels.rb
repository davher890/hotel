class AddFacilitiesToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :facilities, :integer
  end
end

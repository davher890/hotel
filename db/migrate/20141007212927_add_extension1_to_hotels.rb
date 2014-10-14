class AddExtension1ToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :extension1, :integer
  end
end

class AddExtension3ToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :extension3, :integer
  end
end

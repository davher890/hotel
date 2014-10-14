class AddExtension4ToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :extension4, :integer
  end
end

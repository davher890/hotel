class AddExtension2ToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :extension2, :integer
  end
end

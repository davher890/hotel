class AddImageHotels < ActiveRecord::Migration
  def change
  	add_column :hotels, :image_name, :string
  end
end

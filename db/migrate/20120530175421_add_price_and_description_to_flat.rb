class AddPriceAndDescriptionToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :price, :string
    add_column :flats, :description, :text
  end
end

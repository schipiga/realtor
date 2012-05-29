class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string :country
      t.string :city
      t.string :street
      t.string :home_number
      t.string :flat_number

      t.timestamps
    end
  end
end

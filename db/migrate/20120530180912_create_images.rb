class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :flat_id
      t.has_attached_file :photo

      t.timestamps
    end
  end
end

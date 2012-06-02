class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :flat_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

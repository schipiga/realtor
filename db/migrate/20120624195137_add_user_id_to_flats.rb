class AddUserIdToFlats < ActiveRecord::Migration
  def up
    add_column :flats, :user_id, :integer
  end

  def down
    remove_column :flats, :user_id
  end
end

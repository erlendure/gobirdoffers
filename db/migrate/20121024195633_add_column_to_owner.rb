class AddColumnToOwner < ActiveRecord::Migration
  def change
    add_column :owners, :user_id, :integer
  end
end

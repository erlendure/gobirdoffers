class RemoveColumnFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :locale_id
  end

  def down
    add_column :users, :locale_id, :integer
  end
end

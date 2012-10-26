class RemoveColumnFromOwner < ActiveRecord::Migration
  def up
    remove_column :owners, :locale_id
  end

  def down
    add_column :owners, :locale_id, :integer
  end
end

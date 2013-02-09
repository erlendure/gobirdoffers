class RemoveColumnFromOffer < ActiveRecord::Migration
  def up
    remove_column :offers, :locale_id
    remove_column :offers, :user_id
  end

  def down
    add_column :offers, :user_id, :integer
    add_column :offers, :locale_id, :integer
  end
end

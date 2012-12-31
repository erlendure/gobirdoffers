class AddColumnToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :visit_count, :integer
  end
end
